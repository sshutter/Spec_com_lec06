Rails.application.routes.draw do
  get 'main/login', to: 'main#login'
  resources :scores
  resources :students
  post 'main/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'students/:id/edit_score', to: 'students#edit_score', as: 'student_edit_score'

  # Defines the root path route ("/")
  # root "articles#index"
end
