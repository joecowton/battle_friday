# require 'player'

class Game

  attr_reader :current_turn

  def initialize(player_1, player_2)
     @players = [player_1, player_2]
     @current_turn = opponent_of(current_turn)
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack(player)
    player.receive_damage
    @current_turn = opponent_of(current_turn)
  end

  def receive_damage(player)
    player.hit_points -= 10
  end

  def opponent_of(the_player)
    @players.select { |player| player != the_player }.first
  end

private
  attr_reader :players


end
