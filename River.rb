class River
  attr_reader :name

  def initialize(name, fish)
    @name = name
    @fish = fish #array
  end

  def fish_count()
    return @fish.count()
  end

  # def add_fish(fish)
  #   @fish << fish
  # end
end
