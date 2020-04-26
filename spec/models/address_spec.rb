require 'rails_helper'

describe Address do
  describe '#create' do
    # 1. 必須項目が全て存在すれば登録できること
    it "is valid for all" do
      address = build(:address)
      expect(address).to be_valid
    end
  end
end
