FactoryBot.define do
  factory :image do
    url { File.open("#{Rails.root}/public/images/sample.jpg") }
    item
  end
end
