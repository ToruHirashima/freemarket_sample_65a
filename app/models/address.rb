class Address < ApplicationRecord
  belongs_to :user, optional: true
  # validation
  validates :family_name, format: { with: /\A[ぁ-んァ-ン一-龥]/ }, presence: true, length: { maximum: 255 }
  validates :first_name, format: { with: /\A[ぁ-んァ-ン一-龥]/ }, presence: true, length: { maximum: 255 }
  validates :family_name_kana, format: { with: /\A[ァ-ヶー－]+\z/}, presence: true, length: { maximum: 255 }
  validates :first_name_kana, format: { with: /\A[ァ-ヶー－]+\z/}, presence: true, length: { maximum: 255 }
  validates :zip_code, presence: true
  validates :prefecture, presence: true, length: { maximum: 255 }
  validates :city, presence: true, length: { maximum: 255 }
  validates :address1, presence: true, length: { maximum: 255 }
  # validates :adress2, presence: true
end