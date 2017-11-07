class AdministratorController < ApplicationController
	before_action :authenticate_user
	before_action :set_settings, only: [:aldersgrense, :kontaktinfo, :apningstider]
  before_action :set_menykategori, only: [:menykategori]
	layout 'admin'
  	def index
  		@about = Omoss.first
  	end

  	def aldersgrense

  	end

  	def kontaktinfo

  	end

  	def apningstider
  		
  	end

    def help
      
    end

    def utleie
      @utleie = Utleie.first
    end

    def utleietext
      @utleie = Utleie.first
    end

    def meny
      @category = Category.all
    end

    def menykategori
      @drinks = Drink.where(category_id: params[:id] )
    end

  	private	
      def set_menykategori
        @kategori = Category.find(params[:id])
      end
  		def set_settings
  			@setting = Globalsetting.first
  		end
  	
end
