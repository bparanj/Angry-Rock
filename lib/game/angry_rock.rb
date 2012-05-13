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
    # Problem : Is this method is a command and a query?
    # It is ambiguous because play seems to be a name of a command and 
    # it is returning the winning AngryRock object
    # play method that violated Command Query Separation is now gone.
    # This is a query method 
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
      @winner = first_choice.winner(second_choice)
    end
        
    def has_winner?
      !@winner.nil?
    end
    
    def winning_move
      @winner.move
    end
  end
end  

