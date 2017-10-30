class PagesController < ApplicationController
  before_action :set_setting
  def home
  end

  def about
  	@about = Omoss.first
  end
  private	
  	def set_setting
  		@setting = Globalsetting.first
  	end
end
