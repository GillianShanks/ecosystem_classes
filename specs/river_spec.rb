require("minitest/autorun")
require("minitest/rg")
require_relative("../River.rb")

class RiverTest < MiniTest::Test

  def setup()
    @river1 = River.new("Amazon")
  end

  def test_can_get_name()
    assert_equal("Amazon", @river1.name)
  end

  def test_river_is_empty()
    assert_equal(0, @river1.fish_count())
  end

end
