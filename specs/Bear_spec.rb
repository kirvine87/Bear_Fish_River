require("minitest/autorun")
require("minitest/rg")
require_relative("../Bear")
require_relative("../River")
require_relative("../Fish")


class BearTest < MiniTest::Test

  def setup()
    @bear = Bear.new("Yogi")
    @fish1 = Fish.new("Pete")
    @fish2 = Fish.new("Ricky")
  end

  def test_bear_name()
    assert_equal("Yogi", @bear.name)
  end

  def test_bear_stomach()
    assert_equal(0, @bear.stomach)
  end

  def test_bear_get_fish()
    @bear.add_fish(@fish1)
    assert_equal(1,@bear.stomach)
  end

  def test_bear_can_take_fish_from_river()
    river = River.new("Amazon", [@fish1, @fish2])
    @bear.eat_fish_from_river(river)
    assert_equal(1, @bear.stomach())
    assert_equal(1, river.fish_count())
  end

  def test_bear_roar()
    result = @bear.roar
    assert_equal('Raaar!', result)
  end

end
