class DistributionCenter < ApplicationRecord
	has_one_attached :image

	def self.active
		where(status: false)
	end
end
