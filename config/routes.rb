Rails.application.routes.draw do
  root "home#index"
  get 'home/index'
  post "home/send_email"

  get "home/msales", path: "/msales"
  get "home/livestock", path: "/livestock"
  get "home/pca", path: "/pca"
  get "home/pos", path: "/pos"
end
