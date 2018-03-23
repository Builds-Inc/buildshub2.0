Rails.application.routes.draw do
  root to: 'landing#index'

  # devise_for :users
  devise_for :users, controllers: {
    confirmations: 'users/confirmations',
    passwords:     'users/passwords',
    registrations: 'users/registrations',
    sessions:      'users/sessions',
  }

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

  resources :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
