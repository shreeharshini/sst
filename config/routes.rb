Rails.application.routes.draw do

  resources :counter_and_customs
  
  get "loginpage/search_by_issn"
	get "loginpage/DynamicReports"
	get "loginpage/sourcereports"
	get "loginpage/report"
  get "library_account_details/index"
  get "export_file/xlsx"
  get "export_file/csv"
  get "import_data/xlsx"


  
  resources :loginpage, :accounts, :reports, :platforms,
            :export_file, :account_platform_details, :import_data

  devise_for :users
  root to: 'home#index'

  #resources :import_data only: [:index, :new, :create, :destroy]
  #root "import_data#index"
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
