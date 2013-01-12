Rails.application.routes.draw do
  namespace :admin do
    resources :self_delivery_points
  end
end
