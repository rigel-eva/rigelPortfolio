class User < ApplicationRecord
  class << self
      def from_omniauth(auth_hash)
        userReturn = User.find_or_create_by(uid: auth_hash['uid'], provider: auth_hash['provider']) do |user|
          user.name = auth_hash['info']['name']
          user.location = auth_hash['info']['loation']
          user.image_url = auth_hash['info']['image']
          user.url = auth_hash['info']['urls']['Twitter']
          user.save!
        end
        userReturn
      end
  end
end
