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
  has_many :items, through: :likes, dependent: :destroy
  has_one :card, dependent: :destroy
  # has_one :sns_credential, dependent: :destroy

  # validation
  validates :nickname, presence: true, length: { maximum: 255 }
  validates :email, format: { with: /\A([a-zA-Z0-9])+([a-zA-Z0-9\._-])*@([a-zA-Z0-9_-])+([a-zA-Z0-9\._-]+)+/i}, presence: true, uniqueness: true
  validates :password, presence: true
  validates :family_name, format: { with: /\A[ぁ-んァ-ン一-龥]/ }, presence: true, length: { maximum: 255 }
  validates :first_name, format: { with: /\A[ぁ-んァ-ン一-龥]/ }, presence: true, length: { maximum: 255 }
  validates :family_name_kana, format: { with: /\A[ァ-ヶー－]+\z/}, presence: true, length: { maximum: 255 }
  validates :first_name_kana, format: { with: /\A[ァ-ヶー－]+\z/}, presence: true, length: { maximum: 255 }
  validates :birthday, presence: true

end