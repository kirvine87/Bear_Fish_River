require("minitest/autorun")
require("minitest/rg")
require_relative("../Bear")
require_relative("../River")
require_relative("../Fish")


class BearTest < MiniTest::Test

  def setup()
    @bear = Bear.new("Yogi")
  end

  def test_bear_name
    assert_equal("Yogi", @bear.name)
  end

  def test_bear_stomach()
    assert_equal(0, @bear.stomach)
  end

  # def test_bear_get_fish
  #   @fish_count = [@fish1,@fish2]
  #   @bear.bear_get_fish(@river)
  #   assert_equal(1,@bear.stomach.count)
  #   assert_equal(1, @river.fish.count)
  # end

  def test_bear_roar
    result = @bear.roar
    assert_equal('Raaar!', result)
  end

end
