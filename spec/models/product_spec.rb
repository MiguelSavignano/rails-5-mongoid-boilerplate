require 'rails_helper'

RSpec.describe Product, type: :model do
  let(:product){ build_stubbed(:product) }

  it "#name" do
    expect(product.name).to eq product.name
  end
end
