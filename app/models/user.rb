class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # association
  has_many :items
  has_one :address, dependent: :destroy
  has_many :orders
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_one :card, dependent: :destroy
  has_one :sns_credential, dependent: :destroy

  # validation
  validates :nickname,           presence: true
  validates :family_name,        presence: true
  validates :first_name,          presence: true
  validates :family_name_kana,      presence: true
  validates :first_name_kana,        presence: true
  validates :birthday_year,             presence: true
  validates :birthday_month,            presence: true
  validates :birthday_day,             presence: true
end
