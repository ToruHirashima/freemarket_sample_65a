require 'rails_helper'

describe Order do
  describe '#create' do
    it "is valid for all" do
      address = build(:order)
      expect(order).to be_valid
    end
  end
end