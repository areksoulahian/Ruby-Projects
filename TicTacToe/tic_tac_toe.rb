class TicTacToe
    def initialize
      @board = Array.new(3) { Array.new(3, ' ') }
      @current_player = 'X'
    end
  
    def display_board
      puts "  1 2 3"
      @board.each_with_index do |row, i|
        print "#{i + 1} "
        puts row.join('|')
        puts "  -----"
      end
    end
  
    def switch_player
      @current_player = @current_player == 'X' ? 'O' : 'X'
    end
  
    def valid_move?(row, col)
      row.between?(0, 2) && col.between?(0, 2) && @board[row][col] == ' '
    end
  
    def make_move(row, col)
      @board[row][col] = @current_player
    end
  
    def winner?
      # Check rows, columns, and diagonals
      lines = @board + @board.transpose + diagonals
      lines.any? { |line| line.uniq.length == 1 && line[0] != ' ' }
    end
  
    def full_board?
      @board.all? { |row| row.none? { |cell| cell == ' ' } }
    end
  
    def diagonals
      [[@board[0][0], @board[1][1], @board[2][2]], [@board[0][2], @board[1][1], @board[2][0]]]
    end
  
    def play
      puts "Welcome to Tic Tac Toe!"
      display_board
  
      until winner? || full_board?
        puts "#{@current_player}'s turn"
        print "Enter row (1-3): "
        row = gets.chomp.to_i - 1
        print "Enter column (1-3): "
        col = gets.chomp.to_i - 1
  
        if valid_move?(row, col)
          make_move(row, col)
          display_board
          break if winner? || full_board?
          switch_player
        else
          puts "Invalid move. Try again."
        end
      end
  
      if winner?
        puts "#{@current_player} wins!"
      else
        puts "It's a draw!"
      end
    end
  end
  
  game = TicTacToe.new
  game.play
  