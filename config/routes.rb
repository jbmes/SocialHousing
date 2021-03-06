

Socialhousing::Application.routes.draw do
  get "create_new_entry/new_entry"
  post "create_new_entry/get_data_from_form"
  post "create/create_entry"
  
  post "search/get_results_for_searchparameters"
  post "search/show_entrys"
  get "search/show_entrys"
  get "search/change_sorting_of_results"
  get "search/insert"
  get "search/remove"
  get "search/delete_accommodation_unitrail_from_basket"
  get "search/find_entrys"
  get "search/get_results_for_searchparameters"

  get "basket/show_entrys"
  get "basket/insert"
  get "basket/remove"
  get "basket/change_sorting_of_results"
  
  get "entry/show_entry"
  get "entry/edit_entry"
  get "entry/delete_entry"
  get "entry/get_data_from_form"
  put "entry/get_data_from_form"
  get "entry/code_image"
  resources :accommodation_unitrails

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
