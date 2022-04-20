class Location < ApplicationRecord

  def find_coordinates()
    results = Geocoder.search(:address)
    render json: results.first.coordinates
  end

end
