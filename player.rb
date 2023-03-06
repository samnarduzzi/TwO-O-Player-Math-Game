class Player
  def initialize(name)
    @name = name
    @lives = 3
    @score = 0
  end

  def name
    @name
  end

  def lives
    @lives
  end

  def score
    @score
  end

  def lose_life
    @lives -= 1
  end

  def add_point
    @score += 1
  end

end