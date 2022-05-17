Rails.application.routes.draw do
   root 'colleges#index'
  get 'colleges/show'
  get 'colleges/new'
  get 'colleges/edit'
  get 'colleges/_form'
  resources :colleges
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
