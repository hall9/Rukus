class SigninController < ApplicationController

  def index
    require 'socket'
    #Even though it returns null for longitude and latitude, it actually works.
    #This is because we are testing on a local server which will only provide us with a local IP
    #In order to find the lat and long, we must have the global IP
    #@remote_ip = request.remote_ip
    #@location = IpGeocoder.geocode(IPSocket.getaddress(Socket.gethostname))

    #@location = GeoKit::Geocoders::IpGeocoder.geocode(IPSocket.getaddress(Socket.gethostname))
    if request.post?
      #post geolocation info and redirect to feed
      #also handle authentication
      redirect_to feed_path
    end

  end

end
