require 'rails_helper'

describe 'A user who visits the app' do
  it 'can visit the home page' do
    visit '/'

    expect(page).to have_content('Tasty')
  end
end