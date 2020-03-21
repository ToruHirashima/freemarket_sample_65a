class Item < ApplicationRecord
  belongs_to :user
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images
  has_one :delivery, dependent: :destroy
  accepts_nested_attributes_for :delivery
  has_one :order
  belongs_to :category
  belongs_to :size
end
