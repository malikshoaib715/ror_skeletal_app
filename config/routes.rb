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

  get 'home/superadmin_home'
  get 'home/supervisor_home'

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  match "/404", to: "errors#not_found", via: :all
  match "/500", to: "errors#internal_server_error", via: :all
end
