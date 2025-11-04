class BirdCount
  def self.last_week
    array = [0, 2, 5, 3, 7, 8, 4]
  end

  def initialize(birds_per_day)
    @bird_count = birds_per_day
  end

  def yesterday
    @bird_count[-2]
  end

  def total
    @bird_count.sum
  end

  def busy_days
    @bird_count.count { |count| count >= 5}
  end

  def day_without_birds?
    @bird_count.any? { |number| number == 0} 
  end
end
