class Display
    attr_reader :position
  
    def initialize
      @position = nil
    end
  
    def print_board(board)
      puts ''
      (0..2).each do |row|
        print '|'
        (0..2).each do |col|
          print board[row][col]
          print '|'
        end
        puts ''
      end
      puts ''
    end
  
    def user_input(player)
      puts ''
      puts "Ready Player #{player}?"
      print 'Choose a number between 1 and 9: '
      x = gets.chomp
      raise 'An Error' unless ('1'..'9').include? x
  
      @position = x.to_i
    rescue StandardError
      puts ''
      puts 'Wrong Input! Please try again.'
      retry
    end
  
    def position_taken
      puts ''
      puts 'Position taken! Please try again.'
    end
  
    def player_wins(player)
      puts ''
      puts "Player #{player} is the WINNER!!!"
    end
  
    def draw
      puts ''
      puts "It's a DRAW!!!"
    end
  end