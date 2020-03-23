class Size < ApplicationRecord
  has_many :items
  has_many :categories, through: :category_sizes
  has_many :category_sizes
end
