module Game
  class AngryRock
    include Comparable

    WINS = [ %w{rock scissors}, %w{scissors paper}, %w{paper rock}]

    attr_accessor :move

    def initialize(move)
      @move = move.to_s
    end

    def <=>(other)
      if move == other.move
        0
      elsif WINS.include?([move, other.move])
        1
      elsif WINS.include?([other.move, move])
        -1
      else
        raise ArgumentError, "Something's wrong"
      end
    end
    # Problem : Is this method is a command and a query?
    # It is ambiguous because play seems to be a name of a command and 
    # it is returning the winning AngryRock object
    def play(other)
      if self > other
        self
      elsif other > self
        other
      else
        AngryRock.new("TIE!")
      end
    end
  end
end  

