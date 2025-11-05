module Chess
  RANKS = 1..8
  FILES = 'A'..'H'

  def self.valid_square?(rank, file)
    RANKS.include?(rank) && FILES.include?(file.upcase)
  end

  def self.nickname(first_name, last_name)
    name = first_name[0,2] + last_name[-2..]
    name.upcase
  end

  def self.move_message(first_name, last_name, square)
    name = nickname(first_name, last_name)
    rank = square[1].to_i
    file = square[0]
    if valid_square?(rank, file)
      "#{name} moved to #{square}"
    else
      "#{name} attempted to move to #{square}, but that is not a valid square"
    end
  end
end
