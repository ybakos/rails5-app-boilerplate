Rails.application.routes.draw do
  root 'static_pages#home'
  devise_for :users, controllers: { registrations: 'registrations' }

  scope '/admin' do
    resources :users
  end

end
