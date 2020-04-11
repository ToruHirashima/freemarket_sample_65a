FactoryBot.define do
  factory :item do
    name {"MacBook"}
    text {"PC"}
    condition {1}
    price {900}
    user_id {1}
    status {0}
    category_id {1}
    size_id {1}
    brand_name {"apple"}
  end
end
