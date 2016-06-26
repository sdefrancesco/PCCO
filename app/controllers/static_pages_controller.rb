class StaticPagesController < ApplicationController
 def home
 	@user = User.all
 	
 end

 def about
 	@user = User.all
 	
 	
 end

 def career_oppourtunities
 	
 end

 def learn_more
 	@user = User.all
 end



end
