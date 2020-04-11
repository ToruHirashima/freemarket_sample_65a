require 'rails_helper'

RSpec.describe Image, type: :model do
  it 'is valid with a url' do
    image = build(:image)
    expect(image).to be_valid
  end
end
