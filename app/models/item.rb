class Item < ApplicationRecord
  belongs_to :user
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true
  has_one :delivery, dependent: :destroy
  accepts_nested_attributes_for :delivery
  has_one :order, dependent: :destroy
  belongs_to :category
  belongs_to :size

  validates :name, presence: true, length: { maximum: 255 }
  validates :text, presence: true, length: { maximum: 1000 }
  validates :condition, presence: true
  validates :price, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999 }
  validates :images, presence: true

  enum condition: [:'新品、未使用', :'未使用に近い', :'目立った傷や汚れなし', :'やや傷や汚れあり', :'傷や汚れあり', :'全体的に状態が悪い']
end
