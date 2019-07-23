require("minitest/autorun")
require("minitest/rg")
require_relative("../Bear.rb")

class BearTest < MiniTest::Test

  def setup()
    @bear1 = Bear.new("Yogi", "Grizzly")
  end

  def test_can_get_name()
    assert_equal("Yogi", @bear1.name)
  end

  def test_can_get_type()
    assert_equal("Grizzly", @bear1.type)
  end

  def test_stomach_is_empty()
    assert_equal(0, @bear1.food_count())
  end
end
