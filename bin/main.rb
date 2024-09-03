#!/usr/bin/env ruby

# Require necessary files from the 'lib' directory
require_relative "../lib/board"
require_relative "../lib/player"
require_relative "../lib/game"

# Create a new Game instance and start the game
game = Game.new
game.start
