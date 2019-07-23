require("minitest/autorun")
require("minitest/rg")
require_relative("../Fish")

class FishTest < MiniTest::Test

  def setup()
    @fish = Fish.new("Pete")
  end

  def test_get_fish_name()
    assert_equal("Pete", @fish.name)
  end

end
