FactoryBot.define do
  factory :image do
    url {File.open("#{Rails.root}/spec/fixtures/sample.jpg")}
    item
  end
end
