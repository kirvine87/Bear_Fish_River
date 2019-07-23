class Bear

  attr_reader :name

  def initialize(name)
    @name = name
    @stomach = []
  end

  def stomach()
    return @stomach.count()
  end

  def bear_get_fish()
    @stomach << river.fish_count
  end

  # def get_fish(river)
  #   @stomach << river.fish_count
  # end

  def roar
    'Raaar!'
  end

end
