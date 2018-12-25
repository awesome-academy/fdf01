class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  before_save{email.downcase!}

  has_many :rates, dependent: :destroy
  has_many :orders, dependent: :destroy

  validates :email, presence: true,
    length: {maximum: Settings.user.email_max_length},
    format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}, uniqueness: true
  validates :user_name, presence: true, length: {maximum: Settings.user.name_max_length}
  validates :password, presence: true,
    length: {minimum: Settings.user.pass_min_length}, allow_nil: true
    
  has_secure_password
end
