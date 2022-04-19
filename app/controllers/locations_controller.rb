class LocationsController < ApplicationController
  def create
    location = Location.new(
      street: "233 S Wacker Dr",
      city: "Chicago",
      state: "Illinois",
      country: "United States",
      zipcode: "60606"
    )
    location.save
  end

end
