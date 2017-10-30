class AdministratorController < ApplicationController
	before_action :authenticate_user
  before_action :set_menykategori, only: [:menykategori]
	layout 'admin'
  	def index
  		@about = Omoss.first
  		end
  	end

  	def aldersgrense

  	end

  	def kontaktinfo

  	end

  	def apningstider
  		
  	end

    def help
      
    end

    def meny
      @category = Category.all
    end

    def menykategori
    end

  	private	
      def set_menykategori
        @kategori = Category.find(params[:id])
      end
  	
  		end
  	
end
