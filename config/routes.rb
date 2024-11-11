Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # Définir la route pour accéder à la liste d'appartements
  get 'flats', to: 'flats#index'

  # Définir la route pour accéder au détail d'un appartement
  get "flats/:id", to: 'flats#show', as: :flat

  # Action dans le controller
  # Vue associée à l'action

end
