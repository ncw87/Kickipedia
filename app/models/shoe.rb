class Shoe < ActiveRecord::Base
	has_many :users, through: :collections
	has_many :collections
	mount_uploader :image, ImageUploader

	# def self.search(search)
	# 	if search
	# 		where("name LIKE ?", "%#{search}%")
	# 	else
	# 		scoped
	# 	end
	# end
end
