class SigninController < ApplicationController

  def index
    require 'socket'
    @remote_ip = IPSocket.getaddress(Socket.gethostname)
    #@location = IpGeocoder.geocode(IPSocket.getaddress(Socket.gethostname))

    if request.post?
      #post geolocation info and redirect to feed
      #also handle authentication
      redirect_to feed_index_url
    end

  end


end
