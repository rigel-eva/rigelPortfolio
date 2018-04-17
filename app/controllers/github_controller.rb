class GithubController < ApplicationController
  def index
    @projects=JSON.parse(RestClient.get(URI::encode("https://api.github.com/users/rigel-eva/repos")))
  end
end
