class ExtraMealVoucherOrderDecorator <  BasicOrderDecorator
    	#The Extra cost of extra meal voucheris assinged 20
    def initialize(order)
		@order = order
		@extra_added = "Added with one extra meal voucher"
		@extra_cost = 20
    end
		#return extra price if extra meal voucher is chosen
    def getOrderPrice
		return @extra_cost.to_d
	end	
	#added extra 20 if extra meal voucher is chosen
	def getOrderExtraAdded
		return @extra_added   
	end	

end