class User < ApplicationRecord
  has_many :sip
  has_many :lumpsum
  after_initialize :init

  VALID_EMAIL_REGEX = /[a-z0-9]+@[a-z]+\.[a-z]{2,3}/.freeze
  VALID_PAN_REGEX = /[A-Z]{5}[0-9]{4}[A-Z]{1}/.freeze

  enum role: [:free, :paid]

  validates :name, presence: true
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :phone, presence: true, length: { minimum: 10, maximum: 10 }
  validates :state, presence: true
  validates :city, presence: true
  validates :dob, presence: true
  validates :pan, presence: true, format: { with: VALID_PAN_REGEX }

  def init
    #will set the default value only if it's nil
    self.email_verified = false if self.email_verified.nil?
    self.phone_verified = false if self.phone_verified.nil?
  end
end
