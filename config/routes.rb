Rails.application.routes.draw do
  get 'cards/index'
  get 'cards/show'
  get 'cards/add'
  get 'cards/edit'
  get 'people/index'
  get 'people', to: 'people#index'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
