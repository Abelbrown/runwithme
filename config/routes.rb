Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :events do 
  	resources :participations, only: [:create]
  end
  get '/profile' => 'users#profile'
  resources :users, only: [ :edit, :update, :destroy ]
  resources :participations, only: [:update, :destroy]
  mount Attachinary::Engine => "/attachinary"
end


#         new_user_session GET    /users/sign_in(.:format)                   devise/sessions#new
#             user_session POST   /users/sign_in(.:format)                   devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)                  devise/sessions#destroy
#            user_password POST   /users/password(.:format)                  devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)              devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)             devise/passwords#edit
#                          PATCH  /users/password(.:format)                  devise/passwords#update
#                          PUT    /users/password(.:format)                  devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)                    devise/registrations#cancel
#        user_registration POST   /users(.:format)                           devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)                   devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)                      devise/registrations#edit
#                          PATCH  /users(.:format)                           devise/registrations#update
#                          PUT    /users(.:format)                           devise/registrations#update
#                          DELETE /users(.:format)                           devise/registrations#destroy
#                     root GET    /                                          pages#home
#     event_participations POST   /events/:event_id/participations(.:format) participations#create
#                   events GET    /events(.:format)                          events#index
#                          POST   /events(.:format)                          events#create
#                new_event GET    /events/new(.:format)                      events#new
#               edit_event GET    /events/:id/edit(.:format)                 events#edit
#                    event GET    /events/:id(.:format)                      events#show
#                          PATCH  /events/:id(.:format)                      events#update
#                          PUT    /events/:id(.:format)                      events#update
#                          DELETE /events/:id(.:format)                      events#destroy
#                  profile GET    /profile(.:format)                         users#profile
#                edit_user GET    /users/:id/edit(.:format)                  users#edit
#                     user PATCH  /users/:id(.:format)                       users#update
#                          PUT    /users/:id(.:format)                       users#update
#                          DELETE /users/:id(.:format)                       users#destroy
#            participation PATCH  /participations/:id(.:format)              participations#update
#                          PUT    /participations/:id(.:format)              participations#update
#                          DELETE /participations/:id(.:format)              participations#destroy
#              attachinary        /attachinary                               Attachinary::Engine

