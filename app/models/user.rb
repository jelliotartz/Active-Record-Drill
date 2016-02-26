class User < ActiveRecord::Base

  # def self.create_with_omniauth(auth)
  #   create! do |user|
  #     user.provider = auth["provider"]
  #     user.uid = auth["uid"]
  #     user.name = auth["info"]["name"]
  #   end
  # end
  
  def self.find_or_create_with_omniauth!(auth)
  	find_or_create_by!(uid: auth[:uid]) do |user|
  		user.name = auth[:info][:name]
  		user.email = auth[:info][:email]
  		user.img_url = auth[:info][:image]
  		user.provider = auth[:provider]
  	end
	end

end



