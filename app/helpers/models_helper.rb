module ModelsHelper
	def select_brand(name, selected = nil)
		select_tag(name, options_for_select(
			Brand.order('name').load.map{ |x| ["#{x.name}", x.id] } + [['', nil]],
			[selected]))
	end

	def select_model(name, selected = nil)
		select_tag(name, options_for_select(
			Model.includes('brand').order('brands.name','models.name').load.map{ |x| ["#{x.brand.name} #{x.name}", x.id] } + [['', nil]],
			[selected]))
	end
end
