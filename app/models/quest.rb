class Quest < ApplicationRecord
  serialize :info, Hash
  # serialize :content, Array
  has_many :explain
  # Uquest
  has_many :uquests
  has_many :users, through: :uquests


end
