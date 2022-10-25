class GeocodingController < ApplicationController

  def tocoords
    render({ :template => "geocoding_templates/street_to_coords_new.html.erb"})
  end

  def require
    @street_address = params.fetch("street_address")
    
    maps_key = ENV.fetch("GEOCODING_API_KEY")

    url = "https://maps.googleapis.com/maps/api/geocode/json?key=" +maps_key + "&address=" + @street_address

    api_response = URI.open(url).read

    parsed_data = JSON.parse(api_response)

    first_result = parsed_data.fetch("results").at(0)
    location = first_result.fetch("geometry").fetch("location")

    @latitude = location.fetch("lat")

    @longitude = location.fetch("lng")

    render({ :template => "geocoding_templates/street_to_coords_results.html.erb"})
  end
end
