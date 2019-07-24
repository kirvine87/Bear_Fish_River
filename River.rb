
class River

  attr_reader :name


  def initialize(name, fishes)
    @name = name
    @fish_count = fishes
  end

  def fish_count()
    return @fish_count.count()
  end

  def add_fish(fish)
    @fish_count << fish
  end

  def remove_fish()
    return @fish_count.pop()
  end

end
