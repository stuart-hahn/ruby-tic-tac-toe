# Represents the game board, handles rendering, and manages the state of the board
class Board
  # Expose the board array for reading, but not for direct modification
  attr_reader :board

  # Predefined winning combinations for Tic Tac Toe
  WINNING_COMBINATIONS = [
    [0, 1, 2], [3, 4, 5], [6, 7, 8], # Rows
    [0, 3, 6], [1, 4, 7], [2, 5, 8], # Columns
    [0, 4, 8], [2, 4, 6]             # Diagonals
  ]

  # Initialize a new board with 9 empty cells
  def initialize
    @board = Array.new(9, "-")
  end

  # Display the current state of the board in a 3x3 grid format
  def display_board
    puts "\n"
    @board.each_slice(3) { |row| puts row.join(" | ") }
    puts "\n"
  end

  # Update the board at the specified cell with the player's marker
  # Returns true if the move was successful, otherwise false
  def update_board(cell, marker)
    if valid_move?(cell)
      @board[cell] = marker
      true
    else
      false
    end
  end

  # Check if the selected cell is a valid move (i.e., within bounds and not already taken)
  def valid_move?(cell)
    cell.between?(0, 8) && @board[cell] == "-"
  end

  # Check if the board is completely filled
  def board_full?
    !@board.include?("-")
  end

  # Check if there is a winning combination on the board
  def winner?
    WINNING_COMBINATIONS.any? do |combination|
      [@board[combination[0]], @board[combination[1]], @board[combination[2]]].uniq.length == 1 &&
        @board[combination[0]] != "-"
    end
  end
end
