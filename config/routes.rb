Rails.application.routes.draw do
  resources :sections do
    resources :topics
  end
end
