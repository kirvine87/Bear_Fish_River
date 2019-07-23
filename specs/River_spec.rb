require("minitest/autorun")
require("minitest/rg")
require_relative("../River")
require_relative("../Fish")

class RiverTest < MiniTest::Test

  def setup()
    @river = River.new("The Silver River")
    @fish1 = Fish.new("Pete")
    @fish2 = Fish.new("Ricky")

  end

  def test_get_river_name
    assert_equal("The Silver River", @river.name)
  end

  def test_fish_count()
    assert_equal(0, @river.get_fish())
  end

  def test_add_fish()
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    assert_equal(2, @river.get_fish())
  end

  def test_remove_fish()
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    @river.remove_fish(@fish1)
    assert_equal(1, @river.get_fish())
  end

end
