Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  root  'static_pages#home'
  get  'static_pages/about'
  get  'static_pages/wtbuy'
  get  'static_pages/faq'
  get  'static_pages/contact'
  get  'static_pages/shirt'
  get  'static_pages/shoe'
  get  'static_pages/glasse'
  get  'static_pages/addtocart'


  ## Create View San pham TEST
  get  'static_pages/viewSanPham'

  resources :people do
	  collection do
	    match 'search' => 'people#search', :via => [:get, :post], :as => :search
	  end
	end
end
