class Post < ApplicationRecord
	has_many :line_items

	before_destroy :ensure_not_referenced_by_any_line_item


	mount_uploader :image_url, ImageUploader
	
	acts_as_taggable_on :tags

	validates :caption, :image_url, presence: true

	private
		def ensure_not_referenced_by_any_line_item
			unless line_items.empty?
				errors.add(:base, 'Line Items present')
				throw :abort
			end
		end

end

