class CokeOrderDecorator < BasicOrderDecorator
    def initialize(order)
		@order = order
		@extra_added = "Added with Coke"
		@extra_cost = 15
	end
	
     def getOrderPrice
		return @extra_cost.to_d
	end	
	
	def getOrderExtraAdded
		return @extra_added   
	end	
end