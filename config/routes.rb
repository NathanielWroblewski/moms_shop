MumsShop::Application.routes.draw do
  root to: 'pages#index'

  mount Spree::Core::Engine, at: '/shop'
end
