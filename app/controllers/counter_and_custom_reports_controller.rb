class CounterAndCustomReportsController < ApplicationController
	def index
	end
	def show
    @counter_reports = Report.where(report_type: "counter_reports")
    @cost_reports = Report.where(report_type: "cost reports")
    @custom_reports = Report.where(report_type: "custom reports")
    @user_id = current_user.id    
	end
  def show_reports_by_year
    @counter_reports = Report.where(report_type: "counter_reports" , year: params[:year] ? params[:year] : "2016")
    @cost_reports = Report.where(report_type: "cost reports", year: params[:year] ? params[:year] : "2016")
    @custom_reports = Report.where(report_type: "custom reports" , year: params[:year] ? params[:year] : "2016")
    @year = params[:year]
    @user_id = current_user.id
    respond_to do |format|
      format.js { render :counter }
    end
  end

  def csv
    send_file Rails.root.join('files_for_download', 'COUNTER_Journal_Report_1_-_Article_Requests.csv'), :type=>"application/csv", :x_sendfile=>true
  end

  def xlsx
    send_file Rails.root.join('files_for_download', 'recent_report_collection_status.xlsx'), :type=>"application/xlsx", :x_sendfile=>true
  end

  def zip
    send_file Rails.root.join('files_for_download', 'COUNTER_Journal_Report_1_-_Article_Requests.zip'), :type=>"application/zip", :x_sendfile=>true
  end

end
