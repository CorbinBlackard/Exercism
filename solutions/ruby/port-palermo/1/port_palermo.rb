module Port
  IDENTIFIER = :PALE

  def self.get_identifier(city)
    city[0,4].upcase.to_sym
  end

  def self.get_terminal(ship_identifier)
    if ship_identifier[0,3] == "OIL" or ship_identifier[0,3] == "GAS"
      return :A
    else
      return :B
    end
  end
end
