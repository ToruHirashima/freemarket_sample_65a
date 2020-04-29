class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :item
  validates :body, :user_id, presence: true
end
