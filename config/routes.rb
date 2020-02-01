Rails.application.routes.draw do
  get 'pricelist/index'
  get 'retailer/index'
  get 'retailer/new'
  get 'retailer/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
 # DC Routes start
 	get 'dc', 		to: "distribution_centers#index", as: 'dc'
 	get "dc/new", to: "distribution_centers#new", 	as: "new_dc"
 	post	"dc/create", to: "distribution_centers#create", as: "create_dc"

 # DC Routes End

 # PRODUCT Routes Star
 get 'products', to: "products#index", as: 'products'
 get 'product/new', to: "products#new", as: 'new_product'
 post 'product/create', to: "products#create", as: 'create_product'
 get 'product/:id', to: "products#edit", as: 'edit_product'
 patch 'product/:id', to: "products#update", as: 'update_product'
 get 'product/:id/delete', to: "products#delete", as: 'delete_product'
 # PRODUCT Routes End
 
 # Retailer
 get 'retailers', to: "retailer#index", as: "retailers"
 get 'retailer/new', to: "retailer#new", as: "new_retailer"
 post 'retailer/create', to: "retailer#create", as: "create_retailer"
 get 'retailer/:id/show', to: "retailer#show", as: "sho_rwetailer"
 get 'retailer/:id', to: "retailer#edit", as: "edit_retailer"
 patch 'retailer/:id', to: "retailer#update", as: "update_retailer"
 get 'retailer/:id/delete', to: "retailer#delete", as: "delete_retailer"
 # Retailer


 # Price List
 get 'pricelist', to: "pricelist#index", as: "pricelist"
 get 'pricelist/new', to: "pricelist#new", as: "new_price_list"
 post 'pricelist/create', to: "pricelist#create", as: "create_pricelist"
 # Price List
end
