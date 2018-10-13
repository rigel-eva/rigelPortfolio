class WordpressPreviewController < ApplicationController
  def index
    @wordpressPosts = JSON.parse(RestClient.get(URI.encode('https://public-api.wordpress.com/rest/v1.1/sites/rigelmoe.wordpress.com/posts'), content_type: :json, accept: :json))['posts']
  end
end
