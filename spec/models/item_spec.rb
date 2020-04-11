require 'rails_helper'

RSpec.describe Item, type: :model do
  describe '#create' do
    context 'can save' do
      # テスト
      it '1 + 1 が2になること' do
        expect(1 + 1).to eq 2
      end
      # 商品名がなければ出品できないこと
      it 'no name' do
        item = Item.new(name: "",
          text: "bbb",
          condition: 1,
          price: 900,
          user_id: 1,
          status: 0,
          category_id: 1,
          size_id: 1,
          brand_name: nil)
        item.valid?
        # binding.pry
        expect(item.errors[:name]).to include("can't be blank")
      end
    end
  end
end
