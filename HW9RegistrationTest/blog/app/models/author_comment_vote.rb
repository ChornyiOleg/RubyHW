class AuthorCommentVote < ApplicationRecord
  belongs_to :author
  belongs_to :comment
end
