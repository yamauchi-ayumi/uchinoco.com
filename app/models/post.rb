class Post < ApplicationRecord
  validates :body, presence: true, length: { maximum: 65_535 }

  belongs_to :user
  has_many :photos, dependent: :destroy
end
