# Rails.application.routes.draw do
#
#   devise_scope :user do
#     post '/person/register' => 'registrations#create'
#    # post '/user/sign_in' => 'sessions#sign_in'
#   end
#
#   devise_for :users , :controllers => {:registrations => "registrations" , :sessions => "sessions"}
#   resources :cats, :defaults => { :format => 'json'}
#   # The priority is based upon order of creation: first created -> highest priority.
#   # See how all your routes lay out with "rake routes".
#
#   post '/person/create' => 'person#create'
#   # get 'person/find'  => 'person#get_person_by_name'
#   # get 'person/all'  => 'person#get_all_persons'
#   # post '/person/register' => 'registrations#create'
#  # post '/user/sign_in' => 'sessions#sign_in'
#   # # You can have the root of your site routed with "root"
#    #root 'welcome#index'
#
#   # Example of regular route:
#   #   get 'products/:id' => 'catalog#view'
#
#   # Example of named route that can be invoked with purchase_url(id: product.id)
#   #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase
#
#   # Example resource route (maps HTTP verbs to controller actions automatically):
#   #   resources :products
#
#   # Example resource route with options:
#   #   resources :products do
#   #     member do
#   #       get 'short'
#   #       post 'toggle'
#   #     end
#   #
#   #     collection do
#   #       get 'sold'
#   #     end
#   #   end
#
#   # Example resource route with sub-resources:
#   #   resources :products do
#   #     resources :comments, :sales
#   #     resource :seller
#   #   end
#
#   # Example resource route with more complex sub-resources:
#   #   resources :products do
#   #     resources :comments
#   #     resources :sales do
#   #       get 'recent', on: :collection
#   #     end
#   #   end
#
#   # Example resource route with concerns:
#   #   concern :toggleable do
#   #     post 'toggle'
#   #   end
#   #   resources :posts, concerns: :toggleable
#   #   resources :photos, concerns: :toggleable
#
#   # Example resource route within a namespace:
#   #   namespace :admin do
#   #     # Directs /admin/products/* to Admin::ProductsController
#   #     # (app/controllers/admin/products_controller.rb)
#   #     resources :products
#   #   end
# end


TopTalTimeZones::Application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations", :sessions => "sessions"}
  resources :cats, :defaults => { :format => 'json'}
end