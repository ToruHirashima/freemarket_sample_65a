class Item < ApplicationRecord
  belongs_to :user
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images
  has_one :delivery, dependent: :destroy
  accepts_nested_attributes_for :delivery
  has_one :order
  belongs_to :category
  belongs_to :size

  enum condition: [:'新品、未使用', :'未使用に近い', :'目立った傷や汚れなし', :'やや傷や汚れあり', :'傷や汚れあり', :'全体的に状態が悪い']
end
