class Category < ActiveRecord::Base
	mount_uploader :image, MediaFileUploader
	has_many :events
end