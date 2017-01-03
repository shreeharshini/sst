Rails.application.routes.draw do



  post "users/create"
  # resources :products do
  #   get :autocomplete_brand_name, :on => :collection
  # end


  
  

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

	get "home/index"

  
  get "import_data/xlsx"
 

  resources :integration_partners do 
    collection do
      get 'manage_sushi_account'
      get 'update_permission'
    end

  end

  resources :counter_and_custom_reports do 
    collection do
      get 'show_reports_by_year'
      get 'csv'
      get 'xlsx'
      get 'zip'
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

