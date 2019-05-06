Rails.application.routes.draw do
  root 'training_sessions#index'
  resources :training_sessions do
    resources :training_session_activities, as: :activities, path: 'activities'
  end
  resources :activities
  resources :activity_types
end
