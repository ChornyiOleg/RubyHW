class Post < ApplicationRecord
  validates :title, :content, presence: true
  validates :content, length: { maximum: 1000,
    too_long: "%{count} characters is the maximum allowed" }
  validates :title, length: { maximum: 40,
    too_long: "%{count} characters is the maximum allowed" }
  belongs_to :author
    has_rich_text :content
end
