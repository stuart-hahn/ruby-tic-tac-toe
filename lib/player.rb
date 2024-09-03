# Represents a player of Tic Tac Toe
class Player
  # Expose player's name and marker as read-only
  attr_reader :name, :marker

  # Initialize a new player with a name and a marker (X or O)
  def initialize(name, marker)
    @name = name
    @marker = marker
  end

  # Make a move on the board by placing the player's marker at the specified cell
  def make_move(game, cell)
    game.update_board(cell, @marker)
  end
end
