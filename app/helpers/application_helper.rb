module ApplicationHelper
	def full_title(page_title = '')
		base_title = 'Internasjonalen Oslo'
		if page_title.empty?
			base_title + " | " + slogan 
		else
			" #{base_title} | #{page_title}"
		end
	end

	def canonical(pageurl = '')
		base_adresse = 'http://www.internasjonalen.no'
		return base_adresse+pageurl
	end

	def slogan
		"In dog we trust!"
	end

	def contact_rolle rolle
    case rolle
      when "leder"
        "Dagligleder"
      when "booking"
        "Booking ansvarlig"
      when "teknisk"
        "Teknisk ansvarlig"
      when "ingen"
        "Har ingen rolle"
      else
        "Ops!"
    end
  end
end
