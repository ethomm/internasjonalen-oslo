class PagesController < ApplicationController
  def home
  end

  def about
  	
  end

  def kontakt
  end

  def tekniskespsifikasjoner
    @tekniskcategories = Tekniskcategory.all.eager_load(:tekniskitems)
  end
end
