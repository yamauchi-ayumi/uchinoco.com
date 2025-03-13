class Photo < ApplicationRecord
  delongs_to :post

  validates :image, presence: true
  mount_uploader :image, ImageUploader
end
