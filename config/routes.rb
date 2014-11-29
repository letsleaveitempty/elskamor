Rails.application.routes.draw do

  devise_for :users

  mount Bootsy::Engine => '/bootsy', as: 'bootsy'

  root to: 'posts#index'

  get '/imprint'  => 'home#imprint',  as: :imprint
  get '/about_us' => 'home#about_us', as: :about_us
  get '/team'     => 'home#team',     as: :team
  get '/faq'      => 'home#faq',      as: :faq

  resources :offers do
    resources :offer_inquiries, only: ['new', 'create', 'show', 'index']
  end

  resources :posts
end
