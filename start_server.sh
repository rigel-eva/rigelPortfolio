#! /bin/bash
until PGPASSWORD=$DATABASE_PASSWORD psql -h "$DATABASE_HOST" -U "$DATABASE_USER" -c '\q'; do
  >&2 echo "Postgres is unavailable - sleeping"
  sleep 1
done
>&2 echo "Postgres is up!"
if [ -f ready]; then
    >&2 echo "Subsequent run detected - Skipping setup, starting main program"
else
    >&2 echo "Initial run detected - Starting setup"
    RAILS_ENV=production bundle exec rake db:create db:schema:load db:seed
    export SECRET_KEY_BASE=bundle exec rake secret
    touch ready
    >&2 echo "Setup Finished - Starting main program"
fi
bundle exec rails s -p 3000 -b '0.0.0.0' -e production