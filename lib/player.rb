# Represents a player of Tic Tac Toe
class Player
  attr_reader :name, :marker

  def initialize(name, marker)
    @name = name
    @marker = marker
  end

  def make_move(game, cell)
    game.update_board(cell, @marker)
  end
end
