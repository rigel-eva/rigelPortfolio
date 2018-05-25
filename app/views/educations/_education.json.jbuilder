json.extract! education, :id, :name, :startDate, :endDate, :incomplete, :enabled, :paperEarned, :created_at, :updated_at
json.url education_url(education, format: :json)
