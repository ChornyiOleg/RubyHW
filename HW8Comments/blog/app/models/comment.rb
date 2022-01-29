class Comment < ApplicationRecord
  belongs_to :post, counter_cache: true
  belongs_to :author
  validates :body, presence: true
  enum status: %i[unpublished published]

  scope :unpublished, -> { where(status: 'unpublished') }
  scope :published, -> { where(status: 'published') }
 end
