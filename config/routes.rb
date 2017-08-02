Rails.application.routes.draw do
  get 'admin' => 'admin#index'
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  get 'sessions/create'
  get 'sessions/destroy'

  resources :users
  resources :orders
	resources :line_items  
  resources :carts
  
  get 'store/index'

  resources :products do
  	get :who_bought, on: :member
  end

	root to: 'store#index', as: 'store'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
