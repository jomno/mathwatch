class Unit < ApplicationRecord
  belongs_to :subject
  # quest 관계 모델
  has_many :quests
  # user 관계 모델
  has_many :ulevels
  has_many :users, through: :ulevels
end
