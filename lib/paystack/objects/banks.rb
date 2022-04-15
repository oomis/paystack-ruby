require 'paystack/objects/base.rb'

class PaystackBanks < PaystackBaseObject
	def list(country)
		return PaystackBanks.list(@paystack, country)
	end


	def PaystackBanks.list(paystackObj, country)
		initGetRequest(paystackObj, "#{API::BANK_PATH}?country=#{country}")
	end
end
