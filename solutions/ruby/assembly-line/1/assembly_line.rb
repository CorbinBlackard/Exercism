class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    rate = @speed * 221

    success_rate =
      if (1..4).include?(@speed)
        1.0
      elsif (5..8).include?(@speed)
        0.9
      elsif @speed == 9
        0.8
      elsif @speed == 10
        0.77
      else
        0.0
      end

    rate * success_rate
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).to_i
  end
end