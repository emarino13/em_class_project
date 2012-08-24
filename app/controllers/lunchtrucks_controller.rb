class LunchtrucksController < ApplicationController

  def index

  end

  def create
    geo = Google::Geo.new("X")
    addresses = geo.locate(params[:location])
    @latitude = addresses.first.latitude
    @longitude = addresses.first.lng
    render(:index)
  end

end
