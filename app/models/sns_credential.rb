class SnsCredential < ApplicationRecord
  # associations
  belongs_to :user, optional: true
end
