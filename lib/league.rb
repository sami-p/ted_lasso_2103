class League
  attr_reader :name,
              :teams

  def initialize(name)
    @name = name
    @teams = []
  end

  def add_team(team)
    @teams << team
  end

  def captains
    caps = []
    @teams.map do |team|
      caps << team.captain
    end
    caps
  end

  def players_by_team
    hash = Hash.new
    teams.each do |team|
      hash[team] = team.players.map { |player| player.name }
    end
    hash
  end
end
