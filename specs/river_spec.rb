require("minitest/autorun")
require("minitest/rg")
require_relative("../River.rb")
require_relative("../Fish.rb")

class RiverTest < MiniTest::Test

  def setup()
    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Dory")
    @fish3 = Fish.new("Marlin")

    fish = [@fish1, @fish2, @fish3]
    @river1 = River.new("Amazon", fish)
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

end
