class CounterAndCustomReportsController < ApplicationController
	def index
	end
	def show
    @counter_reports = ReportSection.where(section: "counter")
    @cost_reports = ReportSection.where(section: "cost")
    @custom_reports = ReportSection.where(section: "custom")
    @account_id = current_user.account_id  
    byebug
    @grp_year = ReportInventory.distinct.where(account_id: 2).pluck(:year)
    @@year = 2016

	end
  def show_reports_by_year # ajax Method
    @@year = params[:year]
    # @counter_reports = Report.where(report_type: "counter_reports" , year: params[:year] ? params[:year] : "2016")
    # @cost_reports = Report.where(report_type: "cost reports", year: params[:year] ? params[:year] : "2016")
    # @custom_reports = Report.where(report_type: "custom reports" , year: params[:year] ? params[:year] : "2016")
    # @grp_year = ReportInventory.select(:year).where(account_id: @account_id)
    # @account_id = current_user.account_id
    # respond_to do |format|
    #   format.js { render :counter }
  end

  def csv
    send_file Rails.root.join('files_for_download', "#{@@year}", 'COUNTER_Journal_Report_1_-_Article_Requests.csv'), :type=>"application/csv", :x_sendfile=>true
  end

  def xlsx
    send_file Rails.root.join('files_for_download',"#{@@year}" , 'recent_report_collection_status.xlsx'), :type=>"application/xlsx", :x_sendfile=>true
  end

  def zip
    send_file Rails.root.join('files_for_download', "#{@@year}", 'COUNTER_Journal_Report_1_-_Article_Requests.zip'), :type=>"application/zip", :x_sendfile=>true
  end

end
