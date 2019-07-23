require("minitest/autorun")
require("minitest/rg")
require_relative("../River.rb")
require_relative("../Fish.rb")

class RiverTest < MiniTest::Test

  def setup()
    @river1 = River.new("Amazon")

    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Dory")
    @fish3 = Fish.new("Marlin")
  end

  def test_can_get_name()
    assert_equal("Amazon", @river1.name)
  end

  def test_river_is_empty()
    assert_equal(0, @river1.fish_count())
  end

  def test_river_add_fish()
    @river1.add_fish(@fish1)
    @river1.add_fish(@fish2)
    assert_equal(2, @river1.fish_count())
  end

end
