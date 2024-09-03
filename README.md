# Tic Tac Toe Game

This is a simple command-line implementation of the classic Tic Tac Toe game, written in Ruby. The game supports two players, who take turns placing their markers (X and O) on a 3x3 grid. The goal is to be the first player to get three of their markers in a row—horizontally, vertically, or diagonally.

## Features

- **Two-Player Gameplay**: The game supports two players, Player 1 (X) and Player 2 (O).
- **Interactive Command-Line Interface**: Players are prompted to enter their moves via the command line.
- **Win and Draw Detection**: The game automatically detects when a player has won or when the game ends in a draw.
- **Input Validation**: The game validates player input to ensure moves are within bounds and not on already occupied cells.

## Getting Started

### Prerequisites

- **Ruby**: Ensure that you have Ruby installed on your system. You can check by running:

  ```bash
  ruby -v
  ```

  If Ruby is not installed, you can download it from [ruby-lang.org](https://www.ruby-lang.org/en/downloads/).

### Installation

1. **Clone the repository**:

   ```bash
   git clone https://github.com/yourusername/ruby-tic-tac-toe.git
   ```

2. **Navigate to the project directory**:

   ```bash
   cd ruby-tic-tac-toe
   ```

3. **Run the game**:

   ```bash
   ruby bin/main.rb
   ```

### How to Play

1. The game will prompt Player 1 (X) to choose a cell on the board by entering a number between 1 and 9. The cells are numbered as follows:

   ```
   1 | 2 | 3
   4 | 5 | 6
   7 | 8 | 9
   ```

2. After Player 1 makes a move, the board will update, and Player 2 (O) will be prompted to choose a cell.

3. The game continues until one player wins by aligning three of their markers in a row, column, or diagonal, or until the board is full, resulting in a draw.

4. The game will announce the winner or declare a draw when the game ends.

### Example Gameplay

```
It's Player 1's turn.
Choose a cell 1 - 9:
5

 X | - | -
 - | X | -
 - | - | -

It's Player 2's turn.
Choose a cell 1 - 9:
1

 O | - | -
 - | X | -
 - | - | -
```

## Code Structure

- **`lib/board.rb`**: Manages the board's state, including rendering, updating, and checking for winning conditions.
- **`lib/player.rb`**: Represents a player in the game, including their name and marker, and handles making moves.
- **`lib/game.rb`**: Controls the game flow, including alternating turns, validating moves, and determining the game's outcome.
- **`bin/main.rb`**: The entry point for the game, responsible for initializing and starting the game.

## Contributing

Contributions are welcome! If you have any suggestions or improvements, feel free to fork the repository, make your changes, and submit a pull request.

### Steps to Contribute

1. Fork the repository.
2. Create your feature branch (`git checkout -b feature/new-feature`).
3. Commit your changes (`git commit -m 'Add some feature'`).
4. Push to the branch (`git push origin feature/new-feature`).
5. Open a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.
