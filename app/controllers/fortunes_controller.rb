class FortunesController < ApplicationController

  def index

  end


  def fortune_code
    @fortune = [
                "This is a great day!",
                "Dark clouds are above.",
                "Try again tomorrow.",
               ]
    @output = @fortune[rand(@fortune.size)]
    render :index
  end

end
