require 'spec_helper'

module Game
  describe AngryRock do
   
   it "should pick paper as the winner over rock" do
     choice_1 = Game::AngryRock.new(:paper)
     choice_2 = Game::AngryRock.new(:rock)
     winner = choice_1.play(choice_2)
     result = winner.move
     
     result.should == "paper"
   end 
   
   it "picks scissors as the winner over paper" do
     choice_1 = Game::AngryRock.new(:scissors)
     choice_2 = Game::AngryRock.new(:paper)
     winner = choice_1.play(choice_2)
     result = winner.move
     
     result.should == "scissors"   
   end
   
   it "picks rock as the winner over scissors " do
     choice_1 = Game::AngryRock.new(:rock)
     choice_2 = Game::AngryRock.new(:scissors)
     winner = choice_1.play(choice_2)
     result = winner.move
     
     result.should == "rock"      
   end
   
   it "results in a tie when the same choice is made by both players" do
     choice_1 = Game::AngryRock.new(:rock)
     choice_2 = Game::AngryRock.new(:rock)
     winner = choice_1.play(choice_2)
     result = winner.move
       
     result.should == "TIE!"     
   end
   
  end
end