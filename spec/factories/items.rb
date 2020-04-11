FactoryBot.define do
  factory :item do
    name        {Faker::Beer.brand}
    text        {Faker::Beer.name}
    category    {"1"}
    size        {"2"}
    condition   {"新品、未使用"}
    price       {"3000"}
    status      {"0"}
    brand_name  {Faker::Beer.style}
  end
end
