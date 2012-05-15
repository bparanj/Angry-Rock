require 'spec_helper'
require 'angryrock/play'

module AngryRock
  describe Play do
   
   it "should pick paper as the winner over rock" do
     play = Play.new(:paper, :rock)
     
     play.should have_winner
     play.winning_move.should == :paper
   end 
   
   it "picks scissors as the winner over paper" do
     play = Play.new(:scissors, :paper)
     
     play.should have_winner
     play.winning_move.should == :scissors     
   end
   
   it "picks rock as the winner over scissors " do
     play = Play.new(:rock, :scissors)
     
     play.should have_winner
     play.winning_move.should == :rock          
   end
   
   it "results in a tie when the same choice is made by both players : rock, paper or scissors" do
     data_driven_spec([:rock, :paper, :scissors]) do |choice|
       play = Play.new(choice, choice)

       play.should_not have_winner
     end     
   end   
   
   it "should raise exception when illegal input is provided" do
     expect do
       play = Play.new(:junk, :hunk)
     end.to raise_error

   end
  end
end