require 'rails_helper'

RSpec.describe 'users/show', type: :view do
  let(:user) { FactoryBot.create(:user, name: 'stigmat') }

  before(:each) do
    assign(:user, user)
    assign(:games, [''])
    stub_template 'users/_game.html.erb' => 'You in the army now!'
    render
  end

  it 'renders own name' do
    expect(rendered).to match 'stigmat'
  end

  it 'renders current user sees a button to change the password' do
    expect(rendered).not_to match 'Сменить имя и пароль'
    sign_in user
    render
    expect(rendered).to match 'Сменить имя и пароль'
  end

  it 'renders drawn fragments of game' do
    expect(rendered).to have_content 'You in the army now!'
  end
end
