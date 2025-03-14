class Post < ApplicationRecord
  validates :body, length: { maximum: 65_535 }
  validates :post_image, presence: true
  belongs_to :user
  mount_uploader :post_image, PostImageUploader
end
