require 'rspec'
require './lib/league'
require './lib/team'
require './lib/player'

RSpec.describe League do
  describe '#initialize' do
    it 'exists' do
      premier = League.new("Premier League")

      expect(premier).to be_an_instance_of(League)
    end

    it 'has a name' do
      premier = League.new("Premier League")

      expect(premier.name).to eq("Premier League")
    end

    it 'starts with no teams' do
      premier = League.new("Premier League")

      expect(premier.teams).to eq([])
    end
  end
end
