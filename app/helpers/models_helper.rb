module ModelsHelper
	  def select_brand(name, selected = nil)
    select_tag(name, options_for_select(
        Brand.order('name').load.map{ |x| ["#{x.name}", x.id] } + [['', nil]],
        [selected]))
  	end
end
