class Quest < ApplicationRecord
  serialize :info, JSON
  has_many :explain
  # Uquest
  has_many :uquests
  has_many :users, through: :uquests
end
