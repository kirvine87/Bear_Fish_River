require("minitest/autorun")
require("minitest/rg")
require_relative("../River")
require_relative("../Fish")

class RiverTest < MiniTest::Test

  def setup()
    @river = River.new("The Silver River", @fishes)
    @fish1 = Fish.new("Pete")
    @fish2 = Fish.new("Ricky")
    @fishes = [@fish1, @fish2]
  end

  def test_get_river_name
    assert_equal("The Silver River", @river.name)
  end

  def test_fish_count()
    assert_equal(0, @river.fish_count())
  end

  def test_add_fish()
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    assert_equal(2, @river.fish_count())
  end

  def test_remove_fish()
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    returned_fish = @river.remove_fish()
    assert_equal(1, @river.fish_count())
    assert_equal(@fish2, returned_fish)
  end

end
