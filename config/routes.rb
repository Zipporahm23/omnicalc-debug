Rails.application.routes.draw do
#calendar
  get("/", { :controller => "calendar", :action => "invite" })
  
  get("/calendar_invite/new", { :controller => "calendar", :action => "invite" })
  
  get("/calendar_invite/results", { :controller => "calendar", :action => "generate" })



  #geocoding
  get("/", { :controller => "geocoding", :action => "tocoords" })

  get("/street-to-coords/new", { :controller => "geocoding", :action => "tocoords" })
  
  get("/street_to_coords/results", { :controller => "geocoding", :action => "require" })

  
  #Coords to weather
  get("/", { :controller => "forecast", :action => "coords_to_weather" })
  
  get("/coords-to-weather/new", { :controller => "forecast", :action => "coords_to_weather_form" })
  
  get("/coords_to_weather/results", { :controller => "forecast", :action => "coords_to_weather" })

  
  
  
  
  
  get("/street-to-weather/new", { :controller => "meteorologist", :action => "street_to_weather_form" })
  get("/street-to-weather/results", { :controller => "meteorologist", :action => "street_to_weather" })
  
end
