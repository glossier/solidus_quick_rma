module Spree
  module InventoryUnitDecorator
    def self.prepended(base)
      base.delegate :name, to: :variant, prefix: :product
    end
  end
end
Spree::InventoryUnit.prepend Spree::InventoryUnitDecorator
