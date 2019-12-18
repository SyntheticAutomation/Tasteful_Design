require 'rails_helper'

describe 'A user who visits the app' do
  it 'can see photos on the welcome page pulled from the unsplash api' do
    visit '/'

    click_on "Begin Discovery"
    
    expect(page).to have_css("img")
  end
end