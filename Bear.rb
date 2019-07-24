class Bear

  attr_reader :name

  def initialize(name)
    @name = name
    @stomach = []
  end

  def stomach()
    return @stomach.count()
  end

  def bear_get_fish(river)
    @stomach << river.fish_count
  end

  def add_fish(fish)
    @stomach << fish
  end

  def eat_fish_from_river(river)
    fish = river.remove_fish()
    add_fish(fish)
  end

  def roar
    'Raaar!'
  end

end
