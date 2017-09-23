Rails.application.routes.draw do
  root  'static_pages#home'
  get  'static_pages/test'
  get  'static_pages/about'
  get  'static_pages/wtbuy'
  get  'static_pages/faq'
  get  'static_pages/contact'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
