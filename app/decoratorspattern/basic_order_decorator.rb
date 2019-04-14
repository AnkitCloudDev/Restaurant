class BasicOrderDecorator
    def initialize(order)
		@order = order
		@extra_cost = 0
		@extra_cost = "No Add-on Included."
    end
	
	 def getOrderPrice
		return 0.00
	 end	
	#added 0.0 cost if basic order is chosen
	def getOrderExtraAdded
		return @extra_added   
	end	
	
end