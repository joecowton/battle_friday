require 'game'

describe Game do

  let(:player_1) { double :player }
  let(:player_2) { double :player }
  subject(:game) { described_class.new(player_1, player_2) }

  describe '#attack' do
    it 'damages the player' do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end

  describe '#opponent_of' do
      it 'finds the opponent of a player' do
        expect(game.opponent_of(player_1)).to eq player_2
        expect(game.opponent_of(player_2)).to eq player_1
      end
  end
end
