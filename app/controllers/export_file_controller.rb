class ExportFileController < ApplicationController
  before_action :authenticate_user!
	def index
    
  end
	def xlsx
  	send_file Rails.root.join('files_for export', 'recent_report_collection_status.xlsx'), :type=>"application/xlsx", :x_sendfile=>true
	end
	def csv
		send_file Rails.root.join('files_for export', 'AccountPlatformList.csv'), :type=>"application/csv", :x_sendfile=>true
	end
  	
  def show
  	render 'index'
  end
end
