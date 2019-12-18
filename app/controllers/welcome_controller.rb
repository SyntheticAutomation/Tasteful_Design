class WelcomeController < ApplicationController

  def index
    if params[:commit]
      @search_word = params[:query]
      key = ENV['unsplash_access_key']
      response = UnsplashService.search(@search_word, key)
      @photos = response.body[:results]
    end
  end
end
