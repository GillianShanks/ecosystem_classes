require('minitest/autorun')
require('minitest/rg')
require_relative('../Fish.rb')

class FishTest < MiniTest::Test

  def setup()
    @fish1 = Fish.new("Nemo")
  end

  def test_get_fish_name()
    assert_equal("Nemo", @fish1.name)
  end
end
