EmClassProject::Application.routes.draw do
  root(:to => 'homepage#index')

  get 'albums/find_by_year' => 'albums#find_by_year', :as => 'find_by_year'
  get 'albums/find_by_name' => 'albums#find_by_name', :as => 'find_by_name'

  resources :albums
  resources :rpses

  #get 'converters/celsius' => 'converters#celsius', :as => 'celsius'
  #get 'converters/fahrenheit' => 'converters#fahrenheit', :as => 'fahrenheit'

  resources :converters, :only => [:index] do
    collection do
      post :convert
    end
  end
  resources :lunchtrucks

  get 'fortunes/fortune_code' => 'fortunes#fortune_code', :as => 'fortune_code'

  resources :fortunes

  #routes to explanations
  get 'homepage/davinci_coders' => 'homepage#davinci_coders', :as => 'davinci_coders'
  get 'homepage/what_i_learned' => 'homepage#what_i_learned', :as => 'what_i_learned'
  get 'homepage/special_thanks' => 'homepage#special_thanks', :as => 'special_thanks'
  get 'homepage/about_me' => 'homepage#about_me', :as => 'about_me'

  # routes to soure code
  get '/source/fortune.rb' => 'source#fortune', :as => 'fortune_source'
  get '/source/beastie_boys.rb' => 'source#beastie_boys', :as =>'beastie_boys_source'
  get '/source/rock_paper_scissors.rb' => 'source#rps', :as =>'rps_source'
  get '/source/converter.rb' => 'source#converter', :as => 'converter_source'
  get '/source/test_converter.rb' => 'source#test_converter', :as => 'test_converter_source'



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
