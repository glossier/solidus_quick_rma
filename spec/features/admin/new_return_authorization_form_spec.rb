require 'spec_helper'

RSpec.feature 'Return Authorization Listing Form', type: :feature, js: true do
  let(:order) { create :shipped_order }
  stub_authorization!

  before :each do
    visit spree.admin_order_return_authorizations_path(order)
  end

  scenario 'displays a form to initiate a new RMA/return' do
    expect(page).to have_content 'New Return'
  end
end
