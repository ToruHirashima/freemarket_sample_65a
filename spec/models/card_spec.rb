require 'rails_helper'

describe Card do
  describe '#create' do
    it "is valid for all" do
      address = build(:card)
      expect(card).to be_valid
    end
  end
end