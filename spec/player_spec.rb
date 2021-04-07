require './lib/player'

RSpec.describe Player do
  it 'exists' do
    roy = Player.new({name: "Roy Kent", position: "Center Midfielder", salary: 1_000_000})
    expect(roy).to be_an_instance_of(Player)
  end

  it 'has a name' do
    roy = Player.new({name: "Roy Kent", position: "Center Midfielder", salary: 1_000_000})
    expect(roy.name).to eq("Roy Kent")
  end

  it 'has a position' do
    roy = Player.new({name: "Roy Kent", position: "Center Midfielder", salary: 1_000_000})
    expect(roy.position).to eq("Center Midfielder")
  end
end

# pry(main)> roy.salary
# # => 1000000
