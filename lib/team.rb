class Team
  attr_reader :name,
              :coach

  def initialize(name, coach, players)
    @name = name
    @coach = coach
  end
end
