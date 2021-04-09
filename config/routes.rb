Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # indexからdestroyまでの7つのアクションを設定
  resources :blogs
end
