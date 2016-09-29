require 'spec_helper'

RSpec.feature 'Return Button Under Order#edit', type: :feature do
  let!(:order) { create :shipped_order }
  stub_authorization!

  before :each do
    visit spree.edit_admin_order_path(order)
  end

  scenario 'displays the button' do
    expect(page).to have_content 'Return Or Exchange'
  end
end
