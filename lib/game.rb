# require 'player'

class Game
  attr_reader :attack  #, :player1 , :player2
  #
  # def initialize(player1, player2)
  #    @players = [player1, player2]
  # end

  def attack(player)
    player.receive_damage
  end


end
