# Class to control the game flow
class Game
  # Expose board, player_x, and player_o as read-only attributes
  attr_reader :board, :player_x, :player_o

  # Initialize the game with a new board and two players
  def initialize
    @board = Board.new
    @player_x = Player.new("Player 1", "X")
    @player_o = Player.new("Player 2", "O")
    @current_player = player_x # Player X starts the game
  end

  # Start the game loop, continue until there's a winner or the board is full
  def start
    until @board.board_full?
      @board.display_board
      puts "It's #{@current_player.name}'s turn."

      # Prompt the player to choose a cell, validate the input
      cell = nil
      loop do
        puts "Choose a cell between 1 and 9: "
        cell = gets.chomp.strip.to_i - 1
        break if @board.valid_move?(cell)

        puts "Invalid move. Please choose an empty cell between 1 and 9."
      end

      # Update the board with the player's move
      @board.update_board(cell, @current_player.marker)

      # Check if the current move resulted in a win
      if @board.winner?
        @board.display_board
        puts "#{@current_player.name} wins!"
        return
      end

      # Switch to the other player
      switch_players
    end

    # If the board is full and there's no winner, declare tie
    @board.display_board
    puts "It's a tie." if @board.board_full?
  end

  # Switch the current player between player_x and player_o
  def switch_players
    @current_player = @current_player == player_x ? player_o : player_x
  end
end
