class ConvertersController < ApplicationController

  def index

  end

  def celsius(c)
    f = c*9/5.to_f.round(1) +32
    @fahrenheit = params[:fahrenheit]
    @conversion = f

  end

  def fahrenheit(f)
    c = ((f-32).to_f * 5/9.to_f).round(1)
    @celsius = params[:celsius]
    @conversion = c
  end

end
