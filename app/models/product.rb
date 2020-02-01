class Product < ApplicationRecord
	has_many :pricelists
	has_one_attached :image


	@metrics = ['Kg', 'Nos']
end
