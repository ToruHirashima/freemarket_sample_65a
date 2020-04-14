FactoryBot.define do
  factory :delivery do
    fee_burden    { 0 }
    service       { 1 }
    area          { 0 }
    handling_time { 1 }
  end
end
