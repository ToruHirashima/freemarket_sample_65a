require 'rails_helper'
RSpec.describe Item, type: :model do
  describe '#create' do
    context "保存できる場合" do
      it "image,name,text,category,condition,price,statusが存在すれば登録できること" do
        expect(build(:item)).to be_valid
      end
    end

    context "保存できない場合" do
      it "nameがない場合は登録できないこと" do
        item = build(:item, name: nil)
        item.valid?
        expect(item.errors[:name]).to include("can't be blank")
      end

      it "textがない場合は登録できないこと" do
        item = build(:item, text: nil)
        item.valid?
        expect(item.errors[:text]).to include("can't be blank")
      end

      it "category_idがない場合は登録できないこと" do
        item = build(:item, category_id: nil)
        item.valid?
        expect(item.errors[:category_id]).to include("can't be blank")
      end

      it "size_idがない場合は登録できないこと" do
        item = build(:item, size_id: nil)
        item.valid?
        expect(item.errors[:size_id]).to include("can't be blank")
      end

      it "conditionがない場合は登録できないこと" do
        item = build(:item, condition: nil)
        item.valid?
        expect(item.errors[:condition]).to include("can't be blank")
      end

      it "priceがない場合は登録できないこと" do
        item = build(:item, price: nil)
        item.valid?
        expect(item.errors[:price]).to include("can't be blank")
      end

      it "statusがない場合は登録できないこと" do
        item = build(:item, status: nil)
        item.valid?
        expect(item.errors[:status]).to include("can't be blank")
      end
    end
  end
end
