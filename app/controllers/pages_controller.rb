class PagesController < ApplicationController
  before_action :set_setting
  before_action :set_menu
  def home
  end

  def about
  	@about = Omoss.first
  end
  private	
  	def set_setting
  		@setting = Globalsetting.first
  	end

    def set_menu
      @category = Category.all
    end
end
