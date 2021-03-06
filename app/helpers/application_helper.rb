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

  def email_robot email
    mail = email.split('@')
    mail[0] + '(at)' + mail[1]
  end

  def alerts
    alert = (flash[:alert] || flash[:error] || flash[:notice])
    if alert
      alert_generator alert
    end
  end

  def alert_generator msg 
    title = "Internasjonalen Oslo"
    js add_gritter(msg, title: title , sticky: false)
  end
  
end
