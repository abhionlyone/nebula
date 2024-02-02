# spec/features/user_access_to_project_spec.rb

require 'rails_helper'

RSpec.describe 'User access to project', type: :feature do
  let(:admin) { create(:user, admin: true) }
  let(:user) { create(:user) }
  let(:project) { create(:project, admin: admin) }

  before do
    create(:user_project, user: user, project: project)
    login_as(user)
  end

  scenario 'User sees the project they have access to' do
    visit projects_path

    expect(page).to have_content(project.title)
  end
end
