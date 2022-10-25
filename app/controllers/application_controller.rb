class ApplicationController < ActionController::Base

  def blank_calendar_form
    render({ :template => "calendar_templates/new.html.erb"})
end
def calculate_calendar
end

def blank_street_to_coords_form
  render({ :template => "geocoding_templates/street-to-coords/new.html.erb"})
end
def calculate_geocoding
end

def blank_coords_to_weather_form
  render({ :template => "forecast_templates/coords-to-weather/new"})
end

def calculate_forecast
end
end
