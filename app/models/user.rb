class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  mount_uploader :uimage, ImageUploader
  has_secure_password

end
