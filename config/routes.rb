Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'errors/not_found'
  get 'errors/internal_server_error'
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?

  get 'home/index'
  #
  #root "home#index", constraints: lambda { |r| r.env["warden"].authenticate? }
  #
  root to: 'home#index', constraints: -> (r) { r.env["warden"].authenticate? },
       as: :authenticated_root

  # authenticated do
  #   root to: 'home#index'
  # end
  root 'home#landing_page'
  resources :quizzes
  get 'home/superadmin_home'
  get 'home/supervisor_home'
  get 'home/supervisor_home_reports'
  get 'home/supervisor_home_charts'
  # get 'home/reports'
  # get 'home/charts'

  #Quizzes Routes
  get 'quizzes/index'
  get 'quizzes/show_answer/:question_id', to: 'quizzes#show_answer', as: 'show_answer'
  get 'quizzes/choose_answer/:question_id', to: 'quizzes#choose_answer', as: 'choose_answer'
  post 'quizzes/random', to: 'quizzes#choose_random', as: 'choose_random'
  get 'quizzes/add_another_question'

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  match "/404", to: "errors#not_found", via: :all
  match "/500", to: "errors#internal_server_error", via: :all
end
