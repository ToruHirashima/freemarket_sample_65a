require 'rails_helper'
describe Item do
  describe '#create' do
    it "image,name,text,category,condition,price,statusが存在すれば登録できること" do
      item = build(:item)
      expect(item).to be_valid
    end

    it "画像がない場合は登録できないこと" do
      item = build(:item, url: "")
      item.valid?
      expect(item.errors[:url]).to include("can't be blank")
    end

    it "nameがない場合は登録できないこと" do
      item = build(:item, name: "")
      item.valid?
      expect(item.errors[:name]).to include("can't be blank")
    end

    it "textがない場合は登録できないこと" do
      item = build(:item, text: "")
      item.valid?
      expect(item.errors[:text]).to include("can't be blank")
    end

    it "categoryがない場合は登録できないこと" do
      item = build(:item, category: "")
      item.valid?
      expect(item.errors[:category]).to include("can't be blank")
    end

    it "sizeがない場合は登録できないこと" do
      item = build(:item, size: "")
      item.valid?
      expect(item.errors[:size]).to include("can't be blank")
    end

    it "conditionがない場合は登録できないこと" do
      item = build(:item, condition: "")
      item.valid?
      expect(item.errors[:condition]).to include("can't be blank")
    end

    it "priceがない場合は登録できないこと" do
      item = build(:item, price: "")
      item.valid?
      expect(item.errors[:price]).to include("can't be blank")
    end

    it "statusがない場合は登録できないこと" do
      item = build(:item, status: "")
      item.valid?
      expect(item.errors[:status]).to include("can't be blank")
    end
  end
end

RSpec.describe Item, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
