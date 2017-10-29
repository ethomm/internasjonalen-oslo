class Globalsetting < ApplicationRecord

	def openingtimes
		startdivs = "<div class='row'><div class='col-4'>"
		stengtdivs = "</div><div class='col-8'>Stengt</div></div>"
		enddivs = "</div></div>"
		mellomdivs = "</div><div class='col-8'>"
		tosign = " - "
		text = ""

		# Checking closed streak
		# Starting with Monday
		if self.mandag == false
			if self.tirsdag == false
				if self.onsdag == false
					if self.torsdag == false
						if self.fredag == false
							if self.lørdag == false
								if self.søndag == false
									text << startdivs + "Mandag - Søndag" + stengtdivs
								else
									text << startdivs + "Mandag - Lørdag" + stengtdivs
								end
							else
								text << startdivs + "Mandag - Fredag" + stengtdivs
							end
						else
							text << startdivs + "Mandag - Torsdag" + stengtdivs
						end
					else
						text << startdivs + "Mandag - Onsdag" + stengtdivs
					end
				else
					text << startdivs + "Mandag - Tirsdag" + stengtdivs
				end
			else
				text << startdivs + "Mandag" + stengtdivs
			end
		# Checking opening streak for monday
		elsif self.mondayopens == self.tuesdayopens and self.mondaycloses == self.tuesdaycloses and self.tirsdag != false
			#Onsdag
			if self.mondayopens == self.wednesdayopens and self.mondaycloses == self.wednesdaycloses and self.onsdag != false
				#Torsdag
				if self.mondayopens == self.thursdayopens and self.mondaycloses == self.thursdaycloses and self.torsdag != false
					#fredag
					if self.mondayopens == self.fridayopens and self.mondaycloses == self.fridaycloses and self.fredag != false
						#Lørdag
						if self.mondayopens == self.saturdayopens and self.mondaycloses == self.saturdaycloses and self.lørdag != false
							#Søndag
							if self.mondayopens == self.sundayopens and self.mondaycloses == self.sundaycloses and self.søndag != false
								text << startdivs + "Mandag - Søndag" + mellomdivs + self.mondayopens + tosign + self.mondaycloses + enddivs
							else
								text << startdivs + "Mandag - Lørdag" + mellomdivs + self.mondayopens + tosign + self.mondaycloses + enddivs
							end
						else
							text << startdivs + "Mandag - Fredag" + mellomdivs + self.mondayopens + tosign + self.mondaycloses + enddivs
						end
					else
						text << startdivs + "Mandag - Torsdag" + mellomdivs + self.mondayopens + tosign + self.mondaycloses + enddivs
					end
				else
					text << startdivs + "Mandag - Onsdag" + mellomdivs + self.mondayopens + tosign + self.mondaycloses + enddivs
				end
			else
				text << startdivs + "Mandag - Tirsdag" + mellomdivs + self.mondayopens + tosign + self.mondaycloses + enddivs
			end
		else
			text << startdivs + "Mandag" + mellomdivs + self.mondayopens + " - " + self.mondaycloses + enddivs
		end
		
		#Tirsdag
		if self.tirsdag == false and self.mandag != false
			if self.onsdag == false
				if self.torsdag == false
					if self.fredag == false 
						if self.lørdag == false 
							if self.søndag == false
								text << startdivs + "Tirsdag - Søndag" + stengtdivs
							else
								text << startdivs + "Tirsdag - Lørdag" + stengtdivs
							end
						else
							text << startdivs + "Tirsdag - Fredag" + stengtdivs
						end
					else
						text << startdivs + "Tirsdag - Torsdag" + stengtdivs
					end
				else
					text << startdivs + "Tirsdag - Onsdag" + stengtdivs
				end
			elsif self.mandag != false
				text << startdivs + "Tirsdag" + stengtdivs
			end	
		elsif self.mandag == false or self.mondayopens != self.tuesdayopens or self.mondaycloses != self.tuesdaycloses and self.tirsdag != false
			if self.tuesdayopens == self.wednesdayopens and self.tuesdaycloses == self.wednesdaycloses and self.onsdag != false
				#Torsdag
				if self.tuesdayopens == self.thursdayopens and self.tuesdaycloses == self.thursdaycloses and self.torsdag != false
					#fredag
					if self.tuesdayopens == self.fridayopens and self.tuesdaycloses == self.fridaycloses and self.fredag != false
						#Lørdag
						if self.tuesdayopens == self.saturdayopens and self.tuesdaycloses == self.saturdaycloses and self.lørdag != false
							#Søndag
							if self.tuesdayopens == self.sundayopens and self.tuesdaycloses == self.sundaycloses and self.søndag != false
								text << startdivs + "Tirsdag - Søndag" + mellomdivs + self.tuesdayopens + tosign + self.tuesdaycloses + enddivs
							else
								text << startdivs + "Tirsdag - Lørdag" + mellomdivs + self.tuesdayopens + tosign + self.tuesdaycloses + enddivs
							end
						else
							text << startdivs + "Tirsdag - Fredag" + mellomdivs + self.tuesdayopens + tosign + self.tuesdaycloses + enddivs
						end
					else
						text << startdivs + "Tirsdag - Torsdag" + mellomdivs + self.tuesdayopens + tosign + self.tuesdaycloses + enddivs
					end
				else
					text << startdivs + "Tirsdag - Onsdag" + mellomdivs + self.tuesdayopens + tosign + self.tuesdaycloses + enddivs
				end
			else 
				text << startdivs + "Tirsdag" + mellomdivs + self.tuesdayopens + tosign + self.tuesdaycloses + enddivs
			end
		end
		#Onsdag
		#Cheking for Tuesday  closed streak
		if self.onsdag == false and self.tirsdag != false
			if self.torsdag == false 
				if self.fredag == false
					if self.lørdag == false
						if self.søndag == false
							text << startdivs + "Onsdag - Søndag" + stengtdivs
						else
							text << startdivs + "Onsdag - Lørdag" + stengtdivs
						end
					else
						text << startdivs + "Onsdag - Fredag" + stengtdivs
					end
				else
					text << startdivs + "Onsdag - Torsdag" + stengtdivs
				end
			elsif self.tirsdag != false
				text << startdivs + "Onsdag" + stengtdivs
			end	
		elsif self.tuesdayopens != self.wednesdayopens or self.tuesdaycloses != self.wednesdaycloses or self.tirsdag == false
			#Torsdag
			if self.wednesdayopens == self.thursdayopens and self.wednesdaycloses == self.thursdaycloses and self.torsdag != false
				#fredag
				if self.wednesdayopens == self.fridayopens and self.wednesdaycloses == self.fridaycloses and self.fredag != false
					#Lørdag
					if self.wednesdayopens == self.saturdayopens and self.wednesdaycloses == self.saturdaycloses and self.lørdag != false
						#Søndag
						if self.wednesdayopens == self.sundayopens and self.wednesdaycloses == self.sundaycloses and self.søndag != false
							text << startdivs + "Onsdag - Søndag" + mellomdivs + self.wednesdayopens + tosign + self.wednesdaycloses + enddivs
						else
							text << startdivs + "Onsdag - Lørdag" + mellomdivs + self.wednesdayopens + tosign + self.wednesdaycloses + enddivs
						end
					else
						text << startdivs + "Onsdag - Fredag" + mellomdivs + self.wednesdayopens + tosign + self.wednesdaycloses + enddivs
					end
				else
					text << startdivs + "Onsdag - Torsdag" + mellomdivs + self.wednesdayopens + tosign + self.wednesdaycloses + enddivs
				end
			else
				text << startdivs + "Onsdag" + mellomdivs + self.wednesdayopens + tosign + self.wednesdaycloses + enddivs
			end
		end
		#Torsdag
		#Cheking for Tuesday  closed streak
		if self.torsdag == false and self.onsdag != false
			if self.fredag == false
				if self.lørdag == false
					if self.søndag == false
						text << startdivs + "Torsdag - Søndag" + stengtdivs
					else
						text << startdivs + "Torsdag - Lørdag" + stengtdivs
					end
				else
					text << startdivs + "Torsdag - Fredag" + stengtdivs
				end
			elsif self.onsdag != false
				text << startdivs + "Torsdag" + stengtdivs
			end	
		elsif self.wednesdayopens != self.thursdayopens or self.wednesdaycloses != self.thursdaycloses or self.onsdag == false
			#fredag
			if self.thursdayopens == self.fridayopens and self.thursdaycloses == self.fridaycloses and self.fredag != false
				#Lørdag
				if self.thursdayopens == self.saturdayopens and self.thursdaycloses == self.saturdaycloses and self.lørdag != false
					#Søndag
					if self.thursdayopens == self.sundayopens and self.thursdaycloses == self.sundaycloses and self.søndag != false
						text << startdivs + "Torsdag - Søndag" + mellomdivs + self.thursdayopens + tosign + self.thursdaycloses + enddivs
					else
						text << startdivs + "Torsdag - Lørdag" + mellomdivs + self.thursdayopens + tosign + self.thursdaycloses + enddivs
					end
				else
					text << startdivs + "Torsdag - Fredag" + mellomdivs + self.thursdayopens + tosign + self.thursdaycloses + enddivs
				end
			else
				text << startdivs + "Torsdag" + mellomdivs + self.thursdayopens + tosign + self.thursdaycloses + enddivs
			end
		end
		#Fredag
		#Cheking for Tuesday  closed streak
		if self.fredag == false and self.torsdag != false
			if self.lørdag == false
				if self.søndag == false
					text << startdivs + "Fredag - Søndag" + stengtdivs
				else
					text << startdivs + "Fredag - Lørdag" + stengtdivs
				end
			elsif self.torsdag != false
				text << startdivs + "Torsdag" + stengtdivs
			end	
		elsif self.thursdayopens != self.fridayopens or self.thursdaycloses != self.fridaycloses or self.torsdag == false
			#Lørdag
			if self.fridayopens == self.saturdayopens and self.fridaycloses == self.saturdaycloses and self.lørdag != false
				#Søndag
				if self.fridayopens == self.sundayopens and self.fridaycloses == self.sundaycloses and self.søndag != false
					text << startdivs + "Fredag - Søndag" + mellomdivs + self.fridayopens + tosign + self.fridaycloses + enddivs
				else
					text << startdivs + "Fredag - Lørdag" + mellomdivs + self.fridayopens + tosign + self.fridaycloses + enddivs
				end
			else
				text << startdivs + "Fredag" + mellomdivs + self.fridayopens + tosign + self.fridaycloses + enddivs
			end
		end

		#Lørdag
		if self.lørdag == false and self.fredag != false
			if self.søndag == false
				text << startdivs + "lørdag - Søndag" + stengtdivs
			elsif self.torsdag != false
				text << startdivs + "Lørdag" + stengtdivs
			end	
		elsif self.fridayopens != self.saturdayopens or self.fridaycloses != self.saturdaycloses or self.fredag == false
			#Søndag
			if self.saturdayopens == self.sundayopens and self.saturdaycloses == self.sundaycloses and self.søndag != false
				text << startdivs + "Lørdag - Søndag" + mellomdivs + self.saturdayopens + tosign + self.saturdaycloses + enddivs
			else
				text << startdivs + "Lørdag" + mellomdivs + self.saturdayopens + tosign + self.saturdaycloses + enddivs
			end
		end
		#Søndag
		if self.søndag == false and self.lørdag != false
			text << startdivs + "Søndag" + stengtdivs
		elsif self.saturdayopens != self.sundayopens or self.saturdaycloses != self.sundaycloses or self.lørdag == false
			text << startdivs + "Søndag" + mellomdivs + self.sundayopens + tosign + self.sundaycloses + enddivs
		end
	
		

		# Printing result
		return text

	end

	def printTimes
		puts "Mandag opens at "+ self.mondayopens + ". And closes at " + self.mondaycloses
		puts "Tirsdag opens at "+ self.tuesdayopens + ". And closes at " + self.tuesdaycloses
		puts "Onsdag opens at "+ self.wednesdayopens + ". And closes at " + self.wednesdaycloses
		puts "Torsdag opens at "+ self.thursdayopens + ". And closes at " + self.thursdaycloses
		puts "Fredag opens at "+ self.fridayopens + ". And closes at " + self.fridaycloses
		puts "Lørdag opens at "+ self.saturdayopens + ". And closes at " + self.saturdaycloses
		puts "Søndag opens at "+ self.sundayopens + ". And closes at " + self.sundaycloses
	end

	def mondayopens
		return Time.new.change(hour: self.mandaghour, minute: self.mandagminute).to_s(:time) 
	end

	def mondaycloses
		return Time.new.change(hour: self.mandagclosinghour, minute: self.mandagclosingminute).to_s(:time) 
	end

	def tuesdayopens
		return Time.new.change(hour: self.tirsdaghour, minute: self.tirsdagminute).to_s(:time) 
	end

	def tuesdaycloses
		return Time.new.change(hour: self.tirsdagclosinghour, minute: self.tirsdagclosingminute).to_s(:time) 
	end

	def wednesdayopens
		return Time.new.change(hour: self.onsdaghour, minute: self.onsdagminute).to_s(:time) 
	end

	def wednesdaycloses
		return Time.new.change(hour: self.onsdagclosinghour, minute: self.onsdagclosingminute).to_s(:time) 
	end

	def thursdayopens
		return Time.new.change(hour: self.torsdaghour, minute: self.torsdagminute).to_s(:time) 
	end

	def thursdaycloses
		return Time.new.change(hour: self.torsdagclosinghour, minute: self.torsdagclosingminute).to_s(:time) 
	end

	def fridayopens
		return Time.new.change(hour: self.fredaghour, minute: self.fredagminute).to_s(:time) 
	end

	def fridaycloses
		return Time.new.change(hour: self.fredagclosinghour, minute: self.fredagclosingminute).to_s(:time) 
	end

	def saturdayopens
		return Time.new.change(hour: self.lørdaghour, minute: self.lørdagminute).to_s(:time) 
	end

	def saturdaycloses
		return Time.new.change(hour: self.lørdagclosinghour, minute: self.lørdagclosingminute).to_s(:time) 
	end

	def sundayopens
		return Time.new.change(hour: self.søndaghour, minute: self.søndagminute).to_s(:time) 
	end

	def sundaycloses
		return Time.new.change(hour: self.søndagclosinghour, minute: self.søndagclosingminute).to_s(:time) 
	end
end
