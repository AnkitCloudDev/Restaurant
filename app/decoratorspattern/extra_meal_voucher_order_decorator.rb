class ExtraMealVoucherOrderDecorator <  BasicOrderDecorator
    def initialize(order)
		@order = order
		@extra_added = "Added with one extra meal voucher"
		@extra_cost = 20
    end
	
    def getOrderPrice
		return @extra_cost.to_d
	end	
	
	def getOrderExtraAdded
		return @extra_added   
	end	

end