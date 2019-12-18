class UnsplashService

  def self.conn(query, key)
    Faraday.new(url: 'https://api.unsplash.com') do |faraday|
      faraday.headers["Accept-Version"] = 'v1'
      faraday.params["query"] = query
      faraday.params["client_id"] = key
      faraday.params["orientation"] = 'landscape'
      faraday.params["per_page"] = '500'
      faraday.response :json, :parser_options => {symbolize_names: true}
      faraday.adapter Faraday.default_adapter
    end
  end

    def self.search(query, key)
      conn(query, key).get('/search/photos')
    end

    

end
