require 'rails_helper'

describe 'Unsplash API Service' do
  it 'can make calls' do

    query = 'interior-design'
    key = ENV['unsplash_access_key']

    response = UnsplashService.search(query, key)
    expected = response.body[:results][0][:urls][:raw]
    expect(expected).to start_with('https')
    # require 'pry'; binding.pry
    
  end
end