Rails.application.routes.draw do

 resources :accounts
 root 'accounts#new' 
end
