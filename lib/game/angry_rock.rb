module Game
  class AngryRock
    include Comparable

    WINS = [ %w{rock scissors}, %w{scissors paper}, %w{paper rock}]

    attr_accessor :move

    def initialize(move)
      @move = move.to_s
    end

    def <=>(opponent)
      if move == opponent.move
        0
      elsif WINS.include?([move, opponent.move])
        1
      elsif WINS.include?([opponent.move, move])
        -1
      else
        raise ArgumentError, "Something's wrong"
      end
    end

    def winner(opponent)
      if self > opponent
        self
      elsif opponent > self
        opponent
      end
    end
  end
  
  class Play
    def initialize(first_choice, second_choice)
      choice_1 = AngryRock.new(first_choice)
      choice_2 = AngryRock.new(second_choice)
      
      @winner = choice_1.winner(choice_2)
    end
        
    def has_winner?
      !@winner.nil?
    end
    
    def winning_move
      @winner.move
    end
  end
end  

