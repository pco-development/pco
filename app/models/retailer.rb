class Retailer < ApplicationRecord
	has_one_attached :image
	after_create :set_code

	def set_code
		self.code = 'PCR' + "%06d" % ((Retailer.maximum(:id).to_i)+1)
		self.save
	end


end
