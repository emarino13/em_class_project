class ConvertersController < ApplicationController

  def index
    #@celsius = []
    #@fahrenheit = []
  end

  def convert
    if params[:unit] == "celsius" 
      celsius_to_fahrenheit
    else
      fahrenheit_to_celsius
    end
    render :index
  end

  private

  def celsius_to_fahrenheit
    c = params[:temperature].to_f
    f = (c*9/5)+ 32.0
    @fahrenheit = f
  end


  def fahrenheit_to_celsius
    f = params[:temperature].to_f
    c = (f-32.0) * 5/9
    @celsius = c
  end

end

