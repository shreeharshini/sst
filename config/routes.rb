Rails.application.routes.draw do

<<<<<<< HEAD
 
  get 'counter_and_custom_reports/index'
  get 'counter_and_custom_reports/csv'
  get 'counter_and_custom_reports/xlsx'
  get 'counter_and_custom_reports/zip'
  get "counter_and_custom_reports/show"
  get "counter_and_custom_reports/show_reports_by_year"

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

=======
>>>>>>> 4c7b041c037f347dc03dcb33e0731b6d20d93793
	get "home/index"
  get "users/index"
  get "users/sign_out"


  post "users/create"
<<<<<<< HEAD
=======

>>>>>>> 4c7b041c037f347dc03dcb33e0731b6d20d93793
  get  "users/new"
 

<<<<<<< HEAD
  resources :loginpage do
  collection do
    get 'getyear'
    get 'getreports'
    get 'test2'
   end
end 
  
=======
>>>>>>> 4c7b041c037f347dc03dcb33e0731b6d20d93793

  resources :support do 
    collection do
      get 'contactus'
      get 'faq'
      get 'aboutus'
    end
  end

  resources :search_by_issn do 
    collection do 
      get 'search'
      get 'load_suggestions'
      get 'show_report'
    end
  end 

  resources :integration_partners do 
    collection do
      get 'manage_sushi_account'
      get 'update_permission'
    end

  end

  resources :export_files do
    collection do
      get 'csv'
      get 'xlsx'
      get 'zip'
    end
  end
  resources :counter_and_custom_reports do 
    collection do
      get 'show_reports_by_year'
      get 'csv'
      get 'xlsx'
      get 'zip'
      get 'graph'
    end
  end

  resources :loginpage do
    collection do
      get 'getyear'
      get 'getreports'
      get 'test2'
      get 'dynamicreports'
      get 'sourcereports'
      get 'accessdetails'
      get 'selectedplatforms'
      get 'getreports2'
     end
  end
 
 get 'year_trends/highpiecharts'
  

  resources :accounts, :reports, :platforms,
            :source_reports_mappings, :year_trends, :year_usages,
            :year_top_journals, :account_infos, :export_files, 
            :platform_reports, :requestfordemos, :contact_us, 
            :library_account_details, :import_data 

  
  devise_for :users
  root to: 'home#index'
 
end

