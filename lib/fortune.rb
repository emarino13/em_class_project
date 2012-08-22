class Fortune

  def initialize
    @fortune = [
                "This is a great day!",
                "Dark clouds are above.",
                "Try again tomorrow.",
               ]
  end

  def play
    @fortune[rand(@fortune.size)]

  end

end
