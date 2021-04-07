require './lib/player'
require './lib/team'

RSpec.describe do
  it 'exists' do
    roy = Player.new({name: "Roy Kent", position: "Center Midfielder", salary: 1_000_000})
    sam = Player.new({name: "Sam Obisanya", position: "Right-back Defender", salary: 600_000})
    richmond = Team.new("AFC Richmond", "Ted Lasso", [roy, sam])

    expect(richmond).to be_an_instance_of(Team)
  end

  it 'has team name' do
    roy = Player.new({name: "Roy Kent", position: "Center Midfielder", salary: 1_000_000})
    sam = Player.new({name: "Sam Obisanya", position: "Right-back Defender", salary: 600_000})
    richmond = Team.new("AFC Richmond", "Ted Lasso", [roy, sam])

    expect(richmond.name).to eq("AFC Richmond")
  end

  it 'has a coach' do
    roy = Player.new({name: "Roy Kent", position: "Center Midfielder", salary: 1_000_000})
    sam = Player.new({name: "Sam Obisanya", position: "Right-back Defender", salary: 600_000})
    richmond = Team.new("AFC Richmond", "Ted Lasso", [roy, sam])

    expect(richmond.coach).to eq("Ted Lasso")
  end
end

# pry(main)> richmond.coach
# # => "Ted Lasso"
#
# pry(main)> richmond.players
# # => [#<Player:0x00007f8327213de0...>, #<Player:0x00007f8326ab57d8...>]
#
# pry(main)> richmond.total_salary
# # => 1600000
#
# pry(main)> richmond.captain
# # => "Roy Kent"
#
# pry(main)> richmond.positions_filled
# # => ["Center Midfielder", "Right-back Defender"]
