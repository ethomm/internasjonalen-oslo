module ApplicationHelper
	def full_title(page_title = '')
		base_title = 'Internasjonalen'
		if page_title.empty?
			base_title
		else
			" #{base_title} - #{page_title}"
		end
	end

	def canonical(pageurl = '')
		base_adresse = 'http://www.internasjonalen.no'
		return base_adresse+pageurl
	end
end
