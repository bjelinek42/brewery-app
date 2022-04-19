class Location < ApplicationRecord

  def find_coordinates()
    results = Geocoder.search("Paris")
    render json: results.first.coordinates
  end

end
