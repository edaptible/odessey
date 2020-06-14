Rails.application.routes.draw do
  namespace :leaders do
    get 'dashboard/index'
  end
  namespace :managers do
    get 'dashboard/index'
  end
  namespace :faculty do
    get 'home/index'
  end
  namespace :students do
    get 'home/index'
  end
  # http://localhost:3000/users/sign_in
  devise_for :users,  path: 'users',  controllers: {
                                        sessions:      'users/sessions',
                                        passwords:     'users/passwords',
                                        registrations: 'user/registrations'
                                      }
  # http://localhost:3000/admins/sign_in
  devise_for :admins, path: 'admins', controllers: {
                                        sessions:      'admin/sessions',
                                        passwords:     'admin/passwords',
                                        registrations: 'admin/registrations'
                                      }

  namespace :managers do
    resources :student_challenges
  end

  get 'landing/index'

  root to: "landing#index"
end
