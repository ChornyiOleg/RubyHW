class Author < ApplicationRecord
  validates :first_name, :last_name, presence: true
  has_many :posts
  has_many :comments

  def full_name
    "#{first_name} #{last_name}"
  end
end
