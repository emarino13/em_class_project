class Rps

  WINS = {
    "rock" => "scissors",
    "paper" => "rock",
    "scissors" => "paper",
  }

  def play (hand_one, hand_two)

    if hand_one == hand_two
      "#{hand_one} vs #{hand_two}: tie"
    elsif WINS[hand_one] == hand_two
      "#{hand_one} vs #{hand_two}: #{hand_one} wins"
    else
      "#{hand_one} vs #{hand_two}: #{hand_two} wins"
    end
  end
end
