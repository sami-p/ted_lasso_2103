class Player
  attr_reader :name,
              :position,
              :salary
              
  def initialize(player_data)
    @name = player_data[:name]
    @position = player_data[:position]
    @salaray = player_data[:salary]
  end
end
