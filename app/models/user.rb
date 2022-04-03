require 'constants'

class User < ApplicationRecord
  has_many :sip
  has_many :lumpsum
  after_initialize :init

  enum role: [:free, :paid]

  validates :name, presence: true
  validates :email, presence: true, format: { with: Constants::VALID_EMAIL_REGEX }
  validates :password, presence: true, length: { minimum: 6 }
  validates :phone, presence: true, length: { minimum: 10, maximum: 10 }
  validates :state, presence: true
  validates :city, presence: true
  validates :dob, presence: true
  validates :pan, presence: true, format: { with: Constants::VALID_PAN_REGEX }

  def init
    #will set the default value only if it's nil
    self.email_verified = false if self.email_verified.nil?
    self.phone_verified = false if self.phone_verified.nil?
  end
end
