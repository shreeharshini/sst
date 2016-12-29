Rails.application.routes.draw do

 
  get 'counter_and_custom_reports/index'

  get 'counter_and_custom_reports/csv'

  get 'counter_and_custom_reports/xlsx'

  get 'counter_and_custom_reports/zip'


  get 'export_files/csv'

  get 'export_files/xlsx'

  get 'export_files/zip'

  get 'support/contactus'

  get 'support/faq'

  get 'support/aboutus'

	get "loginpage/dynamicreports"
	get "loginpage/sourcereports"
	get "loginpage/report"
  get "loginpage/accessdetails"
  get "loginpage/selectedplatforms"
	get "home/index"
  get "users/index"
  get "users/new"
  get "integration_partners/manage_sushi_account"
  get "integration_partners/update_permission"
  get "import_data/xlsx"
  get "search_by_issn/search"
  get "search_by_issn/load_suggestions"

  # resources :products do
  #   get :autocomplete_brand_name, :on => :collection
  # end

  resources :loginpage do
  collection do
    get 'getyear'
    get 'getreports'
    get 'test2'
   end
end
  get "counter_and_custom_reports/show"
  get "counter_and_custom_reports/show_reports_by_year"
  get "search_by_issn/show_report"
  
  resources :accounts, :reports, :platforms,
            :source_reports_mappings, :year_trends, :year_usages,
            :year_top_journals, :account_infos, :export_files, 
            :platform_reports, :requestfordemos, :contact_us, 
            :library_account_details, :import_data, :search_by_issn , 
            :integration_partners, :counter_and_custom_reports, :additional_users

  

  devise_for :additional_users
  devise_for :users
  root to: 'home#index'
 
end

