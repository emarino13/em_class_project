class Fortune

  def initialize
    @fortune = [
                "This is a great day!",
                "Dark clouds are on the horizon.",
                "Play the lottery. Today is your lucky day.",
               ]
  end

  def play
    @fortune[rand(@fortune.size)]

  end

end
