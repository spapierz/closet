class Post < ApplicationRecord
	mount_uploader :image_url, ImageUploader
end
