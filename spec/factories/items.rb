FactoryBot.define do
  factory :item do
    name        { "MacBook" }
    text        { "PC" }
    category
    size
    brand_name  { "apple" }
    condition   { 1 }
    delivery
    price       { 900 }
    user
    status      { 0 }
  end
end
