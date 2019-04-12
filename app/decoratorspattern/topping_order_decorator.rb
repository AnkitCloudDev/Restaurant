class ToppingOrderDecorator < BasicOrderDecorator
    def initialize(order)
		@order = order
		@extra_added = "with extra topping"
		@extra_cost = 10
    end
	
    def getOrderPrice
		return @extra_cost.to_d
	end	
	
	def getOrderExtraAdded
		return @extra_added   
	end	
end