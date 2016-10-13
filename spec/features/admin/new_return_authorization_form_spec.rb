require 'spec_helper'

RSpec.feature 'Return Authorization Listing Form', type: :feature, js: true do
  let(:order) { create :shipped_order }
  let!(:reason) { create :return_reason }
  stub_authorization!

  before :each do
    visit spree.admin_order_return_authorizations_path(order)
  end

  scenario 'displays a form to initiate a new RMA/return' do
    expect(page).to have_content 'New Return'
  end

  feature 'reasons data attribute' do
    scenario 'renders the data attribute correctly' do
      expect(page.find('#new_authorized_return')['data-reasons']).to be_truthy
    end

    scenario 'embeds reasons into the data attribute' do
      expect(page.find('#new_authorized_return')['data-reasons']).to include reason.name
    end
  end
end
