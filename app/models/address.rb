class Address < ApplicationRecord
  belongs_to :user, optional: true
  # validation
  validates :family_name, format: { with: /\A[ぁ-んァ-ン一-龥]/ }, presence: true
  validates :first_name, format: { with: /\A[ぁ-んァ-ン一-龥]/ }, presence: true
  validates :family_name_kana, format: { with: /\A[ァ-ヶー－]+\z/}, presence: true
  validates :first_name_kana, format: { with: /\A[ァ-ヶー－]+\z/}, presence: true
  validates :zip_code, presence: true
  validates :prefecture, presence: true
  validates :city, presence: true
  validates :adress1, presence: true
  # validates :adress2, presence: true
end