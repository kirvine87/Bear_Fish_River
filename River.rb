class River

  attr_reader :name

  def initialize(name)
    @name = name
    @fish_count = []
  end

  def get_fish()
    return @fish_count.count()
  end

  def add_fish(fish)
    @fish_count << fish
  end

  def remove_fish(fish)
    @fish_count.delete(fish)
  end

end
