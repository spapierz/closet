class Post < ApplicationRecord

	mount_uploader :image_url, ImageUploader

	validates :caption, :image_url, presence: true

end
