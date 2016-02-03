Rails.application.routes.draw do



  root to: 'welcome#index'

  # This means that users can just type /about instead of /welcome/about
  get 'about' => 'welcome#about'

  devise_for :users

  resources :topics do
    resources :posts, except: [:index]
  end

<<<<<<< HEAD
  # resources :advertisements
  #
  # resources :questions
=======
  resources :users, only: [:new, :create]

  resources :advertisements

  resources :questions
>>>>>>> checkpoint-36

end
