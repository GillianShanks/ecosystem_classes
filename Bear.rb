class Bear
attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def food_count()
    return @stomach.size
  end

  def roar()
    return "ROAR!"
  end

end
