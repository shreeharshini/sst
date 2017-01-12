Rails.application.routes.draw do


	get "home/index"
  get "users/index"

  post "users/sign_out"

  post "users/create"

  get  "users/new"
 
  get 'year_trends/highpiecharts'


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
      get 'csv'
      get 'get_cost_per_usage'
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
      get 'getreports', as: 'getreports'
      get 'test2'
      get 'dynamicreports'
      get 'sourcereports'
      get 'accessdetails'
      get 'selectedplatforms'
      get 'result'

     end
  end
 
  
  resources :accounts, :reports, :platforms,
            :source_reports_mappings, :year_trends, :year_usages,
            :year_top_journals, :account_infos,  
            :platform_reports, :requestfordemos, :contact_us, 
            :library_account_details, :import_data
  
  devise_for :users
  root to: 'home#index'
end

