require 'rails_helper'

RSpec.describe 'Admin invites a user', type: :feature do
  let(:admin) { create(:user, admin: true) }

  before do
    login_as(admin)
  end

  scenario 'Admin successfully invites a user' do
    visit new_user_invitation_path

    fill_in 'Email', with: 'user@example.com'
    click_button 'Send an invitation'

    expect(page).to have_content('An invitation email has been sent to user@example.com.')
  end
end
