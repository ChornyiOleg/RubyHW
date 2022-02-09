class Post < ApplicationRecord
  belongs_to :author
  has_many :comments, -> { order "updated_at DESC" }, dependent: :destroy
  has_rich_text :content
  validates :title, :content, presence: true
  validates :content, length: { maximum: 1000,
    too_long: "%{count} characters is the maximum allowed" }
  validates :title, length: { maximum: 40,
    too_long: "%{count} characters is the maximum allowed" }
  validates :image, url: {allow_blank: true}
end

