Rails.application.routes.draw do
  # http://localhost:3000/users/sign_in
  devise_for :users,  path: 'users',
                      controllers: {
                        sessions:      'users/sessions',
                        passwords:     'users/passwords',
                        registrations: 'user/registrations'
                      }
  # http://localhost:3000/admins/sign_in
  devise_for :admins, path: 'admins',
                      controllers: {
                        sessions:      'admin/sessions',
                        passwords:     'admin/passwords',
                        registrations: 'admin/registrations'
                      }

  get 'landing/index'

  root to: "landing#index"
end
