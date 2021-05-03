require 'rspec'
require './lib/player'

RSpec.describe Player do
  describe '#initialize' do
    it 'exists' do
      roy = Player.new({name: "Roy Kent", position: "Center Midfielder", salary: 1_000_000})

      expect(roy).to be_an_instance_of(Player)
    end
  end
end
