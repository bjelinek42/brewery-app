class BreweriesController < ApplicationController
  def index
    render json: Brewery.all
  end



  def getAddress
    id = params[:id]
    brewery = Brewery.find_by(id: id)
    render json: brewery.address
  end 

  def getLatLong
    def show
      b = Brewery.find_by(id: params[:id])
      p "in lat and long"
      results = Geocoder.search(b.address)
      render json: results.first.coordinates
    end
  end 
end
