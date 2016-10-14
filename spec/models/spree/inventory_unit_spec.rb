require 'spec_helper'

RSpec.describe Spree::InventoryUnit, type: :model do
  let!(:unit) { create :inventory_unit }

  describe '#product_name' do
    it 'returns the product name of the variant' do
      expect(unit.product_name).to eq unit.variant.name
    end
  end
end
