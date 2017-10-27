class User < ApplicationRecord
  # ulevel 모델 관계
  has_many :ulevels
  has_many :units, through: :ulevels
  # uquest 모델 관계
  has_many :uquests
  has_many :quests, through: :uquests
  # 로그인 부분
  before_save { self.email = email.downcase }
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
                    length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  has_secure_password
end
