class Purchase < ActiveRecord::Base

	after_create :email_purchaser
	def to_param
		uuid
	end

	def email_purchaser
		PurchaseMailer.purchase_peceipt(self).deliver

	end


end
