class Author < ApplicationRecord
  def password_requirements
    rules = {
      " must contain at least one lowercase letter" => /[a-z]+/,
      " must contain at least one uppercase letter" => /[A-Z]+/,
      " must contain at least one digit" => /\d+/,
      " must contain at least one special character" => /[^A-Za-z0-9]+/
    }
    rules.each do |message, regex|
      if password.present?
        errors.add(:password, message) unless password.match(regex)
      end
    end
  end

  has_secure_password
  validates :first_name, :last_name, :email, :password, presence: true, on: :create
  validates :first_name, :last_name, presence: true, on: :update
  validates :password, length: {minimum: 8}, on: :create
  validate :password_requirements, on: :create
  validates_format_of :email, :with => /@/, on: :create
  validates_uniqueness_of :email, case_sensitive: false
  has_many :posts
  has_many :comments
  has_one_attached :avatar
  has_many :author_comment_votes

  before_save :downcase_email
  #attr_accessible :email, :password, :password_confirmation

  def full_name
    "#{first_name} #{last_name}"
  end

  private

  def downcase_email
    self.email = email.downcase
  end
end
