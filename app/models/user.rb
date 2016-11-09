class User < ApplicationRecord
  # Constants
  VALID_EMAIL_REGEX =  /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  # Befor Actions
  before_save { self.email.downcase! }

  # Validations
  validates :password, presence: true, length: { minimum: 6 }
  validates :name, presence: true, length: { maximum: 50}
  validates :email, presence: true, uniqueness: { case_sensitive: false },
            length: { maximum: 255}, format: { with: VALID_EMAIL_REGEX}
  has_secure_password


end
