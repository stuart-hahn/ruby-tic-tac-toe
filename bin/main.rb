#!usr/bin/env ruby

# Require necessary files
require_relative "../lib/board"
require_relative "../lib/player"

game = Board.new

puts game.display_board
game.update_board(0, "X")
puts game.display_board
