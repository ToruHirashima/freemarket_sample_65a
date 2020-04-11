require 'rails_helper'

RSpec.describe Item, type: :model do
  describe '#create' do
    context 'can save' do
      # (記述バリエーション：最後に削除)商品名がなければ出品できないこと
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

      # (記述バリエーション：最後に削除)商品名がなければ出品できないこと
      it 'is invalid without a name' do
        item = FactoryBot.build(:item, name: nil)
        item.valid?
        expect(item.errors[:name]).to include("can't be blank")
      end
      
      # 商品名がなければ出品できないこと
      it 'is invalid without a name' do
        item = build(:item, name: nil)
        item.valid?
        expect(item.errors[:name]).to include("can't be blank")
      end

      # 商品名が255文字以内の場合は登録できること
      it 'is valid with a name that has less than 255 characters' do
        item = build(:item, name: 'あ' * 255)
        expect(item).to be_valid
      end
      
      # 説明がなければ出品できないこと
      it 'is invalid without a text' do
        item = build(:item, text: nil)
        item.valid?
        expect(item.errors[:text]).to include("can't be blank")
      end

      # 商品状態がなければ出品できないこと
      it 'is invalid without a condition' do
        item = build(:item, condition: nil)
        item.valid?
        expect(item.errors[:condition]).to include("can't be blank")
      end

      # 価格がなければ出品できないこと
      it 'is invalid without a price' do
        item = build(:item, price: nil)
        item.valid?
        expect(item.errors[:price]).to include("can't be blank")
      end

      # ユーザーIDがなければ出品できないこと
      it 'is invalid without a user_id' do
        item = build(:item, user_id: nil)
        item.valid?
        expect(item.errors[:user_id]).to include("can't be blank")
      end

      # 商品ステータスがなければ出品できないこと
      it 'is invalid without a status' do
        item = build(:item, status: nil)
        item.valid?
        expect(item.errors[:status]).to include("can't be blank")
      end

      # # 商品カテゴリがなければ出品できないこと
      # it 'is invalid without a category_id' do
      #   item = build(:item, category_id: nil)
      #   item.valid?
      #   expect(item.errors[:category_id]).to include("can't be blank")
      # end

      # # 商品サイズがなければ出品できないこと
      # it 'is invalid without a size_id' do
      #   item = build(:item, size_id: nil)
      #   item.valid?
      #   expect(item.errors[:size_id]).to include("can't be blank")
      # end

    end
  end
end
