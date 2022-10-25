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
 render({ :template => "geocoding_templates/street_to_coords_results.html.erb"}) 
end
end
