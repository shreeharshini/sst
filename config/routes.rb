Rails.application.routes.draw do

 
  
  resources :platforms
  resources :plats
  get 'download_files/csv'

  get 'download_files/xlsx'

  get 'download_files/zip'

  get 'support/contactus'

  get 'support/faq'

  get 'support/aboutus'

	get "loginpage/dynamicreports"
	get "loginpage/sourcereports"
	get "loginpage/report"
  get "loginpage/accessdetails"
	get "home/index"

  resources :loginpage do
    collection do
      get :dynamic_report_list
    end
  end
  
  resources :loginpage, :accounts, :reports, :platforms, 
            :source_reports_mappings, :year_trends, :year_usages,
            :year_top_journals, :account_infos, :download_files,
            :contact_us ,:platform_report_details,
            :source_reports_mappings, :requestfordemos, :create_additional_users,
            :dynamicreports, :account_platform_details

  devise_for :users
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
