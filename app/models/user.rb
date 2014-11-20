class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable


    def self.find_for_google_oauth2(access_token, signed_in_resource=nil)
	    data = access_token.info
	    user = User.where(:email => data["email"]).first

	    unless user
	        user = User.create(name: data["name"],
	             email: data["email"],
	             password: Devise.friendly_token[0,20]
	            )
	    end
	    user
	end

	def self.find_for_facebook(access_token, signed_in_resource=nil)
	    data = access_token.info
	    user = User.where(:email => data["email"]).first

	    unless user
	        user = User.create(name: data["name"],
	             email: data["email"],
	             password: Devise.friendly_token[0,20]
	            )
	    end
	    user
	end

	def self.find_for_twitter(access_token, signed_in_resource=nil)
	    data = access_token.info
	    user = User.where(:email => data["email"]).first

	    unless user
	        user = User.create(name: data["name"],
	             email: data["email"],
	             password: Devise.friendly_token[0,20]
	            )
	    end
	    user
	end


end
