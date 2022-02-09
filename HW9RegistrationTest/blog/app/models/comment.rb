class Comment < ApplicationRecord
  has_ancestry
  has_many :author_comment_votes, dependent: :destroy
  belongs_to :post, counter_cache: true
  belongs_to :author
  validates :body, presence: true
  validates :body, presence: true
  enum status: %i[unpublished published]
  scope :published, -> { where(status: 1) }
  scope :unpublished, -> { where(status: 0) }
 end
