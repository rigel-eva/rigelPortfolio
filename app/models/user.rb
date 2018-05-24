class User < ApplicationRecord
    class << self
        def from_omniauth(auth_hash)
            puts "Hit from_omniauth!"
            puts auth_hash['info']
            userReturn=User.find_or_create_by(uid: auth_hash['uid'], provider: auth_hash['provider']) do |user|
                puts "boop"
                user.name = auth_hash['info']['name']
                puts user.name
                user.location = auth_hash['info']['location']
                puts user.location
                user.image_url = auth_hash['info']['image']
                puts user.image_url
                user.url = auth_hash['info']['urls']['Twitter']
                puts user.url
                puts user.methods
                user.save!
            end
            userReturn
        end
    end
end
