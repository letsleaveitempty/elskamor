Rails.application.routes.draw do

  devise_for :users

  mount Bootsy::Engine => '/bootsy', as: 'bootsy'

  root to: 'posts#index'

  get '/imprint' => 'home#imprint', as: :imprint

  resources :offers do
    resources :offer_inquiries, only: ['new', 'create', 'show', 'index']
  end

  resources :posts
end
