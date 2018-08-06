class Post < ApplicationRecord

	mount_uploader :image_url, ImageUploader
	
	acts_as_taggable_on :tags

	validates :caption, :image_url, presence: true

end