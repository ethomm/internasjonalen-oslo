class PagesController < ApplicationController
  	def home

 	end

  	def about
  		@about = Omoss.first
  	end
  	
end
