class User < ApplicationRecord
  #validates :username, presence: true, uniqueness: true
  #has_secure_password

  validates :name, presence: true, uniqueness: true
  mount_uploader :uimage, ImageUploader
  has_secure_password


end
