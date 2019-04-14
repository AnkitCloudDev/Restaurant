class CokeOrderDecorator < BasicOrderDecorator
    	#The Extra cost of coke is assinged 15
    def initialize(order)
		@order = order
		@extra_added = "Added with Coke"
		@extra_cost = 15
	end
	#return extra price if coke is ticked
        def getOrderPrice
		return @extra_cost.to_d
	    end	
	#add 15 extra cost if coke is chosen
	def getOrderExtraAdded
		return @extra_added   
	end	
end