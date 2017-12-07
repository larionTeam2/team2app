class Picture < ApplicationRecord
	mount_uploader :image_url, ImageUploader
end
