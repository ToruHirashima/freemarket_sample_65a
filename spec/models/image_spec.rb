require 'rails_helper'
describe Image do
  describe "#create" do
    it "urlがあれば保存できること" do
      expect(build(:item).to be_valid
    end

    it "urlが無ければ保存できないこと" do
      item = build(:item, url: mil)
      item.valid?
      expect(item.errors[:url]).to include("can't be blank")
    end
  end
end

RSpec.describe Image, type: :model do
  it 'is valid with a url' do
    image = build(:image)
    expect(image).to be_valid
  end
end
