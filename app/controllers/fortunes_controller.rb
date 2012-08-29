class FortunesController < ApplicationController

  def index

  end


  def fortune_code
    @fortune = [
                "This is a great day!",
                "Dark clouds are on the horizon.",
                "Play the lottery. Today is your lucky day.",
               ]
    @output = @fortune[rand(@fortune.size)]
    render :index
  end

end
