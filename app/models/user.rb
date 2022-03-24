class User < ApplicationRecord
  has_many :sip
  has_many :lumpsum
end
