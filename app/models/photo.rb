class Photo < ApplicationRecord
  delongs_to :post

  validates :image, presence: true
end
