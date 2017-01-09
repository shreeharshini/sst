class CounterAndCustomReportsController < ApplicationController
	def index
	end
	def show
    @graph1 = GeneratedReport.all
    @pie_chart = Platform.all
    @counter_reports = ReportSection.where(section: "counter")
    @cost_reports = ReportSection.where(section: "cost")
    @custom_reports = ReportSection.where(section: "custom")
    @account_id = current_user.account_id
    @grp_year = ReportInventory.distinct.where(account_id: @account_id).pluck(:year)
    @@year = 2016

	end
  def show_reports_by_year # ajax Method
    @@year = params[:year]
    @graph1 = GeneratedReport.all
    @pie_chart = Platform.all
    ## if reqd onlly when we are updating div according to year parameters//////
    @counter_reports = ReportSection.where(section: "counter" , year: params[:year] ? params[:year] : "2016")
    @cost_reports = ReportSection.where(section: "cost ", year: params[:year] ? params[:year] : "2016")
    @custom_reports = ReportSection.where(section: "custom" , year: params[:year] ? params[:year] : "2016")
    @grp_year = ReportInventory.distinct.where(account_id: 2).pluck(:year)
    @account_id = current_user.account_id
    respond_to do |format|
      format.js { render :counter }
    end
  end
  def graph
    @graph1 = GeneratedReport.all
    @pie_chart = Platform.all
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
