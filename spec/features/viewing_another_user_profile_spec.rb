require 'rails_helper'

RSpec.feature 'Viewing another user profile', type: :feature do
  let(:user) { FactoryBot.create :user, name: 'Виктор', balance: 650 }
  let(:another_user) { FactoryBot.create :user, name: 'Геннадий' }

  let!(:games) { [
    FactoryBot.create(
      :game,
      user: another_user,
      current_level: 5,
      prize: 16000,
      fifty_fifty_used: true,
      is_failed: false,
      created_at: '16.07.2020, 15:00',
      finished_at: Time.now
    ),

    FactoryBot.create(:game, user: another_user, current_level: 2, prize: 100)
  ] }

  before(:each) do
    login_as user
  end

  scenario 'profile view' do
    visit '/'

    click_link 'Геннадий'

    expect(page).to have_current_path "/users/#{another_user.id}"
    expect(page).to have_content 'Виктор'
    expect(page).to have_content '650 ₽'
    expect(page).to have_content 'Геннадий'
    expect(page).to have_content 'деньги'
    expect(page).to have_content '16 июля, 15:00'
    expect(page).to have_content '5'
    expect(page).to have_content '16 000 ₽'

    expect(page).to have_content '2'
    expect(page).to have_content '100 ₽'

    expect(page).not_to have_content 'Сменить имя и пароль'

    #save_and_open_page
  end
end
