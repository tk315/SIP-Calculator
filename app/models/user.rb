class User < ApplicationRecord
  has_many :sip
  has_many :lumpsum
  after_initialize :init

  VALID_EMAIL_REGEX = /[a-z0-9]+@[a-z]+\.[a-z]{2,3}/.freeze

  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :user_type, presence: true

  def init
    #will set the default value only if it's nil
    self.email_verified = false if self.email_verified.nil?
    self.phone_verified = false if self.phone_verified.nil?
  end
end
