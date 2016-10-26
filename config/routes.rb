Rails.application.routes.draw do
  resources :report_subtotals
  resources :filers
  resources :travel_schedules
  resources :travelers
  resources :travels
  resources :non_political_expenditures
  resources :credits
  resources :coh_payments
  resources :investment_purchases
  resources :unpaid_incurred_obligations
  resources :expenditures
  resources :loans
  resources :pledges
  resources :non_monetary_contributions
  resources :monetary_contributions
  resources :reports
  resources :entities
  resources :coversheets
  resources :treasurers
  resources :candidates
  resources :report_types
  resources :election_types
  resources :expend_types
  resources :transactions
  resources :filer_types
  resources :prefixes
  resources :states
  resources :address_types
  resources :expenditure_categories
  resources :transactions
  resources :office_helds
  resources :office_soughts
  resources :entity_types
  resources :payment_methods
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
