class Item < ApplicationRecord
  belongs_to :user
  has_many :images, dependent::destroy
  has_one :delivery, depenxent::destroy
  has_one :order
  belongs_to :category
  belongs_to :size

end
