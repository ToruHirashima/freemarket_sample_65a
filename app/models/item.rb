class Item < ApplicationRecord
  belongs_to :user
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true
  has_one :delivery, dependent: :destroy
  accepts_nested_attributes_for :delivery, allow_destroy: true
  has_one :order
  belongs_to :category
  belongs_to :size

  validates :name, :text, :category_id, :size_id, :condition, :price, :user_id, :status, presence: true

  enum condition: [:'新品、未使用', :'未使用に近い', :'目立った傷や汚れなし', :'やや傷や汚れあり', :'傷や汚れあり', :'全体的に状態が悪い']
end
