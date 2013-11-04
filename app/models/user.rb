class User < ActiveRecord::Base
	has_secure_password
	has_many :shoes, through: :collections
	has_many :collections
end
