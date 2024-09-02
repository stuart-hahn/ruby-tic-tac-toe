#!usr/bin/env ruby

# Require necessary files
require_relative "../lib/board"
require_relative "../lib/player"

game = Board.new
player_x = Player.new("Stuart", "X")
player_o = Player.new("Jenni", "O")

puts game.display_board
player_x.make_move(game, 0)
puts game.display_board
player_o.make_move(game, 1)
puts game.display_board
