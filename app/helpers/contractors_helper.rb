module ContractorsHelper
	def select_contractor(name, t_id, selected = nil)
		select_tag(name, options_for_select(

			Task.find(t_id).offers.load.map{ |x| ["#{x.contractor.surname} #{x.contractor.name} (#{x.comment})", x.contractor_id] } + [['', nil]],
			[selected]))
	end

	def rating(val)
		return "stars/0.png" if val == 0
		return "stars/1.png" if val <= 1 
		return "stars/15.png" if val <= 1.5
		return "stars/2.png" if val <= 2  
		return "stars/25.png" if val <= 2.5  
		return "stars/3.png" if val <= 3  
		return "stars/35.png" if val <= 3.5
		return "stars/4.png" if val <= 4  
		return "stars/45.png" if val <= 4.5
		return "stars/5.png" if val <= 5        
	end
end
