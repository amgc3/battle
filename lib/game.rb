require_relative 'player'

class Game

def attack(player = Player.new)
  @player = player
  @player.receive_damage
end
end
