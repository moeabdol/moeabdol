Rails.application.routes.draw do
  root "home#index"
  get 'home/index'
  post "home/send_email"
end
