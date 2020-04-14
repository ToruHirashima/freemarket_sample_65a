require 'rails_helper'
RSpec.describe Item, type: :model do
  describe '#create' do
    context 'can save' do
      # 商品名がなければ出品できないこと
      it 'is invalid without a name' do
        item = build(:item, name: nil)
        item.valid?
        expect(item.errors[:name]).to include('を入力してください')
      end

      # 商品名が255文字以内の場合は登録できること
      it 'is valid with a name that has less than 255 characters' do
        image_params = build_list(:image, 3)
        item = build(:item, name: 'あ' * 255, images: image_params)
        expect(item).to be_valid
      end
      
      # 商品名が256文字以上の場合は登録できないこと
      it 'is invalid with a name that has more than 256 characters' do
        item = build(:item, name: 'a' * 256)
        item.valid?
        expect(item.errors[:name]).to include('は255文字以内で入力してください')
      end
        
      # 商品説明がなければ出品できないこと
      it 'is invalid without a text' do
        item = build(:item, text: nil)
        item.valid?
        expect(item.errors[:text]).to include('を入力してください')
      end
      
      # 商品説明が1000文字以内の場合は登録できること
      it 'is valid with a text that has less than 1000 characters' do
        image_params = build_list(:image, 3)
        item = build(:item, text: 'あ' * 1000, images: image_params)
        expect(item).to be_valid
      end
      
      # 商品説明が1001文字以上の場合は登録できないこと
      it 'is invalid with a text that has more than 1001 characters' do
        item = build(:item, text: 'a' * 1001)
        item.valid?
        expect(item.errors[:text]).to include('は1000文字以内で入力してください')
      end
        
      # 商品状態がなければ出品できないこと
      it 'is invalid without a condition' do
        item = build(:item, condition: nil)
        item.valid?
        expect(item.errors[:condition]).to include('を入力してください')
      end

      # 価格がなければ出品できないこと
      it 'is invalid without a price' do
        item = build(:item, price: nil)
        item.valid?
        expect(item.errors[:price]).to include('を入力してください')
      end

      # 価格が9,999,999円以内の場合は登録できること
      it 'is valid with a price that has less than 9,999,999 yen' do
        image_params = build_list(:image, 3)
        item = build(:item, price: 9999999, images: image_params)
        expect(item).to be_valid
      end
      
      # 価格が10,000,000円以上の場合は登録できないこと
      it 'is invalid with a price that has more than 10,000,000 yen' do
        item = build(:item, price: 10000000)
        item.valid?
        expect(item.errors[:price]).to include('は9999999以下の値にしてください')
      end
      
      # 価格が300円以上の場合は登録できること
      it 'is valid with a price that has more than 300 yen' do
        image_params = build_list(:image, 3)
        item = build(:item, price: 300, images: image_params)
        expect(item).to be_valid
      end
      
      # 価格が299円以下の場合は登録できないこと
      it 'is invalid with a price that has less than 299 yen' do
        item = build(:item, price: 299)
        item.valid?
        expect(item.errors[:price]).to include('は300以上の値にしてください')
      end

      # ユーザーIDがなければ出品できないこと
      it 'is invalid without a user_id' do
        item = build(:item, user_id: nil)
        item.valid?
        expect(item.errors[:user_id]).to include('を入力してください')
      end

      # 商品ステータスがなければ出品できないこと
      it 'is invalid without a status' do
        item = build(:item, status: nil)
        item.valid?
        expect(item.errors[:status]).to include('を入力してください')
      end

      # 商品カテゴリがなければ出品できないこと
      it 'is invalid without a category_id' do
        item = build(:item, category_id: nil)
        item.valid?
        expect(item.errors[:category_id]).to include('を入力してください')
      end

      # 写真があれば出品できること
      it 'is valid with a images' do
        image_params = build_list(:image, 3)
        item = build(:item, images: image_params)
        expect(item).to be_valid
      end
      
      # 写真がなければ出品できないこと
      it 'is invalid without a images' do
        image_params = build_list(:image, 0)
        item = build(:item, images: image_params)
        item.valid?
        expect(item.errors[:images]).to include('を入力してください')
      end

      # 配送情報があれば出品できること
      it 'is valid with a delivery' do
        image_params = build_list(:image, 3)
        delivery_params = build(:delivery, fee_burden: 0, service: 0, area: 0, handling_time: 0)
        item = build(:item, delivery: delivery_params, images: image_params)
        expect(item).to be_valid
      end

      # 配送料の負担がなければ出品できないこと
      it 'is invalid without a charge information' do
        image_params = build_list(:image, 3)
        delivery_params = build(:delivery, fee_burden: nil, service: 0, area: 0, handling_time: 0)
        item = build(:item, delivery: delivery_params, images: image_params)
        item.valid?
        expect(item.errors[:'delivery.fee_burden']).to include('を入力してください')
      end

      # 配送の方法がなければ出品できないこと
      it 'is invalid without a shipping method' do
        image_params = build_list(:image, 3)
        delivery_params = build(:delivery, fee_burden: 0, service: nil, area: 0, handling_time: 0)
        item = build(:item, delivery: delivery_params, images: image_params)
        item.valid?
        expect(item.errors[:'delivery.service']).to include('を入力してください')
      end

      # 配送元の地域がなければ出品できないこと
      it 'is invalid without a area information' do
        image_params = build_list(:image, 3)
        delivery_params = build(:delivery, fee_burden: 0, service: 0, area: nil, handling_time: 0)
        item = build(:item, delivery: delivery_params, images: image_params)
        item.valid?
        expect(item.errors[:'delivery.area']).to include('を入力してください')
      end

      # 発送までの日数がなければ出品できないこと
      it 'is invalid without days to ship' do
        image_params = build_list(:image, 3)
        delivery_params = build(:delivery, fee_burden: 0, service: 0, area: 0, handling_time: nil)
        item = build(:item, delivery: delivery_params, images: image_params)
        item.valid?
        expect(item.errors[:'delivery.handling_time']).to include('を入力してください')
      end

      # # 商品サイズがなければ出品できないこと（商品サイズがなくても出品できるようにする必要あり！）
      # it 'is invalid without a size_id' do
      #   item = build(:item, size_id: nil)
      #   item.valid?
      #   expect(item.errors[:size_id]).to include('を入力してください')
      # end
    end

    # 下記テストデータ（既にmasterにあるもの）は、重複しますが残しました（日本語化に対応を要す）。

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
