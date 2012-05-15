module AngryRock
  class Play
    def initialize(first_choice, second_choice)
      @choice_1 = Internal::AngryRock.new(first_choice)
      @choice_2 = Internal::AngryRock.new(second_choice)
      
      @winner = @choice_1.winner(@choice_2)
    end
        
    def has_winner?
      @choice_1.has_winner?(@choice_2)
    end
    
    def winning_move
      @winner.move
    end
  end
  
  module Internal # no-rdoc
    # This is implementation details. Not for client use. Don't touch me.
    class AngryRock
      WINS = {rock: :scissors, scissors: :paper, paper: :rock}

      attr_accessor :move

      def initialize(move)
        @move = move
      end
      
      def has_winner?(opponent)
        self.move != opponent.move
      end
      # fetch will raise exception when the key is not one of the allowed choice
      def winner(opponent)
        if WINS.fetch(self.move)
          self
        else
          opponent
        end
      end
      
    end
  end
end