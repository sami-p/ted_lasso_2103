class Team
  attr_reader :name,
              :coach,
              :players

  def initialize(name, coach, players)
    @name = name
    @coach = coach
    @players = players
  end

  def total_salary
    total = 0
    @players.each do |player|
      total += player.salary
    end
    total
  end
end
