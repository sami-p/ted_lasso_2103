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
  end
end
