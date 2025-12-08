class DndCharacter
  attr_reader :strength, :dexterity, :constitution,
              :intelligence, :wisdom, :charisma

  # Class method to calculate ability modifier
  def self.modifier(score)
    ((score - 10) / 2.0).floor
  end

  # Initialize a new character and roll all abilities
  def initialize
    @strength     = roll_ability
    @dexterity    = roll_ability
    @constitution = roll_ability
    @intelligence = roll_ability
    @wisdom       = roll_ability
    @charisma     = roll_ability
  end

  # Calculate initial hitpoints
  def hitpoints
    10 + self.class.modifier(@constitution)
  end

  private

  # Roll 4 six-sided dice, sum the top 3
  def roll_ability
    rolls = 4.times.map { rand(1..6) }
    rolls.sort.last(3).sum
  end
end