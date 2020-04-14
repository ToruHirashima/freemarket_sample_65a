FactoryBot.define do
  factory :item do
    name        {Faker::Beer.brand}
    text        {Faker::Beer.name}
    category    
    size        
    condition   { 1 }
    delivery
    price       { 3000 }
    user
    status      { 0 }
    brand_name  {Faker::Beer.style}
  end
end
