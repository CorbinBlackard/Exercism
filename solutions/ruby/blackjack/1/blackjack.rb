module Blackjack
  def self.parse_card(card)
    case card
      when "ace" then 11
      when "two" then 2
      when "three" then 3
      when "four" then 4
      when "five" then 5
      when "six" then 6 
      when "seven" then 7
      when "eight" then 8
      when "nine" then 9
      when "jack", "king", "queen", "ten" then 10
    else
      0
    end
      
  end

  def self.card_range(card1, card2)
    card_val = parse_card(card1) + parse_card(card2)
    case card_val
      when 4..11 then "low"
      when 12..16 then "mid"
      when 17..20 then "high"
      when 21 then "blackjack"
    end
  end

  def self.first_turn(card1, card2, dealer_card)
    player_total = parse_card(card1) + parse_card(card2)
    dealer_value = parse_card(dealer_card)
    if player_total == 22
      "P"
    elsif player_total == 21 && dealer_value < 10
      "W"
    elsif player_total >= 17
      "S"
    elsif player_total <= 11
      "H"
    elsif player_total >= 12 && player_total <= 16
      if dealer_value >= 7
        "H"
      else
        "S"
      end
    end
  end
end
