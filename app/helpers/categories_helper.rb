module CategoriesHelper
	def select_category(name, selected = nil)
		select_tag(name, options_for_select(
			Category.order('name').load.map{ |x| ["#{x.name}", x.id] } + [['', nil]],
			[selected]))
	end
end
