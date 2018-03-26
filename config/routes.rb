Rails.application.routes.draw do
  # devise_for :users

  devise_for :users, controllers: {
    confirmations: 'users/confirmations',
    passwords:     'users/passwords',
    registrations: 'users/registrations',
    sessions:      'users/sessions',
  }

  root to: 'landing#index'

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

  resources :personals
  resources :contacts

  get '/home/mypage', to: 'home#mypage'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
