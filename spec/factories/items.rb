FactoryBot.define do
  factory :item do
    name        {Faker::Beer.brand}
    text        {Faker::Beer.name}
    category    
    size        
    condition   {Faker::Beer.alcohol}
    price       {"3000"}
    status      {"0"}
    brand_name  {Faker::Beer.style}
    user
  end
end
