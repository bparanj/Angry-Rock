require 'spec_helper'

module Game
  describe AngryRock do
   
   it "should pick paper as the winner over rock" do
     choice_1 = AngryRock.new(:paper)
     choice_2 = AngryRock.new(:rock)
     play = Play.new(choice_1, choice_2)
     
     play.should have_winner
     play.winning_move.should == "paper"     
   end 
   
   it "picks scissors as the winner over paper" do
     choice_1 = AngryRock.new(:scissors)
     choice_2 = AngryRock.new(:paper)
     play = Play.new(choice_1, choice_2)
     
     play.should have_winner
     play.winning_move.should == "scissors"     
   end
   
   it "picks rock as the winner over scissors " do
     choice_1 = AngryRock.new(:rock)
     choice_2 = AngryRock.new(:scissors)
     winner = choice_1.play(choice_2)
     result = winner.move
     
     result.should == "rock"      
   end
   
   xit "results in a tie when the same choice is made by both players : rock, paper or scissors" do
     data_driven_spec([:rock, :paper, :scissors]) do |choice|
       choice_1 = AngryRock.new(choice)
       choice_2 = AngryRock.new(choice)
       winner = choice_1.play(choice_2)
       result = winner.move
       
       result.should == "Both players selected : #{choice}. It's a TIE!"      
     end     
   end   
   
  end
end