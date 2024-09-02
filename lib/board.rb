# Represents the game board, handles rendering, and manages the state of the board
class Board
  attr_reader :board

  def initialize
    @board = Array.new(9, "-")
  end

  def display_board
    puts "\n"
    @board.each_slice(3) { |row| puts row.join(" | ") }
    puts "\n"
  end

  def update_board(cell, marker)
    if valid_move?(cell)
      @board[cell] = marker
      true
    else
      false
    end
  end

  def valid_move?(cell)
    cell.between?(0, 8) && @board[cell] == "-"
  end

  def board_full?
    !@board.include?("-")
  end
end
