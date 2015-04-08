class SigninController < ApplicationController
  def index

    if request.post?
      #post geolocation info and redirect to feed
      #also handle authentication
      @host_port = request.host_with_port

      redirect_to feed_index_url
    end

  end


end
