Rails.application.routes.draw do

 
  
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
  get "loginpage/selectedplatforms"
	get "home/index"
  
  resources :loginpage, :accounts, :reports, :platforms, 
            :source_reports_mappings, :year_trends, :year_usages,
            :year_top_journals, :account_infos, :download_files, :platform_reports


  devise_for :users
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
