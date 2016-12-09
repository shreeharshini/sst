Rails.application.routes.draw do
  
  get "loginpage/search_by_issn"
	get "loginpage/DynamicReports"
	get "loginpage/sourcereports"
	get "loginpage/report"
  get "library_account_details/index"
  get "export_file/xlsx"
  get "export_file/csv"
  get "import_data/xlsx"
  


  
  resources :loginpage, :accounts, :reports, :platforms,
            :export_file, :account_platform_details, :import_data,
            :search_by_issn , :counter_and_customs , :integration_partners 

  # resources :export_file do
  #   collection do
  #     get 'xlsx'
  #     get 'csv'
  #   end
  # end

  resources :search_by_issn do
    collection do
      get 'load_suggestions'
      get 'search'
    end
  end

  devise_for :users
  root to: 'home#index'

  #resources :import_data only: [:index, :new, :create, :destroy]
  #root "import_data#index"
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
