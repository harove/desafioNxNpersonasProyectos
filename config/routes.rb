Rails.application.routes.draw do

  resources :employees

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :projects do
    post '/employees', to: 'projects#add_employee'
    #post '/employees', to: 'projects#add_employee', as: 'add_employee'  
    delete '/employees/:id', to: 'projects#remove_employee', as: 'remove_employee'
    # delete '/employees/:id', to: 'projects#remove_employee', as: 'remove_employee'

  end
end
