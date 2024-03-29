require("minitest/autorun")
require("minitest/rg")
require_relative("../River.rb")
require_relative("../Fish.rb")
require_relative("../Bear.rb")

class RiverTest < MiniTest::Test

  def setup()
    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Dory")
    @fish3 = Fish.new("Marlin")

    fish = [@fish1, @fish2, @fish3]
    @river1 = River.new("Amazon", fish)

    @bear1 = Bear.new("Yogi", "Grizzly")
  end

  def test_can_get_name()
    assert_equal("Amazon", @river1.name)
  end

  def test_river_has_fish()
    assert_equal(3, @river1.fish_count())
  end
  #
  # def test_river_add_fish()
  #   @river1.add_fish(@fish1)
  #   @river1.add_fish(@fish2)
  #   assert_equal(5, @river1.fish_count())
  # end
  def test_river_loses_fish()
    @river1.lose_fish(@fish1)
    assert_equal(2, @river1.fish_count())
  end

  def test_bear_hunts()
    @river1.bear_hunts(@bear1, @fish2)

    assert_equal(2, @river1.fish_count())
    assert_equal(1, @bear1.food_count())
  end

end
