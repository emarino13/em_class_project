class ConvertersController < ApplicationController

  def index
    @conversion = []
  end

  def celsius
    c = params[:celsius]
    puts "LOOK HERE!"
    puts c
    f = (c*9/5).to_f.round(1)+ 32
    @conversion = f
    render :index

  end

  # def fahrenheit
  #    c = ((f-32).to_f * 5/9.to_f).round(1)
  #   @celsius = params[:celsius]
  #   @conversion = Converter.where(:farhenheit => c)
  #    render :index
  #  end

end
