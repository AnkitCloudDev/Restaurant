class ToppingOrderDecorator < BasicOrderDecorator
	#The Extra cost of topping is assinged 10 
    def initialize(order)
		@order = order
		@extra_added = "with extra topping"
		@extra_cost = 10
    end
		#return extra price if topping is ticked
    def getOrderPrice
		return @extra_cost.to_d
	end	
	# Add 10 extra if extra topping is needed
	def getOrderExtraAdded
		return @extra_added   
	end	
end