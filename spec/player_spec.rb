require 'player'

# describe Player do
#     let(:player1) { Player.new("Allan")}
#     let(:player2) { Player.new("Dania ")}
#   it 'Player 1 attack reduces Player 2 HP BY 10' do
#     expect{player1.attack(player2)}.to change {player2.hit_points}.by(-10)
#   end
# end

describe Player do
  subject(:dave) { Player.new('Dave') }
  subject(:mittens) { Player.new('Mittens') }
  subject(:game) { Game.new(dave, mittens )}

  describe '#name' do
    it 'returns the name' do
      expect(dave.name).to eq 'Dave'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(dave.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(mittens).to receive(:receive_damage)
      game.attack(mittens)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { dave.receive_damage }.to change { dave.hit_points }.by(-10)
    end
  end

  
 end
