class ConvertersController < ApplicationController

  def index
    @conversion = []
    @degrees = []
  end

  #converting from Celsius to Fahrenheit
  def celsius
    c = params[:celsius].to_f
    f = (c*9/5)+ 32.0
    @conversion = f
    render :index
  end

  #converting from Fahrenheit to Celsius
  def fahrenheit
    f = params[:fahrenheit].to_f
    c = (f-32.0) * 5/9
    @degrees = c
    render :index
  end

end

