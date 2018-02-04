Rails.application.routes.draw do
  resources :comments
  scope '(:locale)' do
    resources :orders
    resources :customers
    resources :pumpkins
    root to: 'startpage#welcome'
    # For details on the DSL available
    # within this file,
    # see http://guides.rubyonrails.org/routing.html
  end
end
