require 'game'

describe Game do

  let(:player_1) { double :player, hit_points: 100 }
  let(:player_2) { double :player, hit_points: 100  }
  let(:player_on_zero) { double :player, hit_points: 0 }
  subject(:game) { described_class.new(player_1, player_2) }
  subject(:finished_game) { described_class.new(player_on_zero, player_2) }

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

  describe '#game_over?' do
    it 'returns false if no-one is at 0HP' do
      expect(game.game_over?).to be false
    end

    it 'returns true if at least one player is at 0HP' do
      expect(finished_game.game_over?).to be true
    end
  end

  describe '#loser' do
     it 'returns a player on less than 0HP' do
       expect(finished_game.loser).to eq player_on_zero
     end
  end
end
