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

  scenario 'clicks through to the rma/return section' do
    click_on 'Return Or Exchange'
    expect(page.current_url).to include "#{order.number}/return_authorizations"
  end

  scenario 'only displays on order edit page' do
    visit spree.admin_orders_path
    expect(page).to_not have_content 'Return Or Exchange'
  end
end
