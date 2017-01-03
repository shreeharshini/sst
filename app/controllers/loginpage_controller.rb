class LoginpageController < ApplicationController
  before_action :authenticate_user!

  def index
   @yearusages = YearUsage.all

    @this_usage = YearUsage.find_by_sql("SELECT Report_Type, SUM(YTD) as abcd FROM year_usages GROUP BY Report_Type")
   
   # @abc = YearUsage.find_by_sql("SELECT Report_Type, SUM(YTD) as qwer FROM year_usages GROUP BY Report_Type").last
  #for year 2016    
      @highsplinechart1 = YearTrend.find_by_sql("SELECT SUM(Jan_Stats) as abcd FROM year_trends where processing_year = 2016")
      @highsplinechart2 = YearTrend.find_by_sql("SELECT SUM(Feb_Stats) as abcd FROM year_trends where processing_year = 2016 ")
      @highsplinechart3 = YearTrend.find_by_sql("SELECT SUM(Mar_Stats) as abcd FROM year_trends where processing_year = 2016 ")
      @highsplinechart4 = YearTrend.find_by_sql("SELECT SUM(Apr_Stats) as abcd FROM year_trends where processing_year = 2016 ")
      @highsplinechart5 = YearTrend.find_by_sql("SELECT SUM(May_Stats) as abcd FROM year_trends where processing_year = 2016 ")
      @highsplinechart6 = YearTrend.find_by_sql("SELECT SUM(Jun_Stats) as abcd FROM year_trends where processing_year = 2016 ")
      @highsplinechart7 = YearTrend.find_by_sql("SELECT SUM(Jul_Stats) as abcd FROM year_trends where processing_year = 2016 ")
      @highsplinechart8 = YearTrend.find_by_sql("SELECT SUM(Aug_Stats) as abcd FROM year_trends where processing_year = 2016 ")
      @highsplinechart9 = YearTrend.find_by_sql("SELECT SUM(Sept_Stats) as abcd FROM year_trends where processing_year = 2016 ")
      @highsplinechart10 = YearTrend.find_by_sql("SELECT SUM(Oct_Stats) as abcd FROM year_trends where processing_year = 2016 ")
      @highsplinechart11 = YearTrend.find_by_sql("SELECT SUM(Nov_Stats) as abcd FROM year_trends where processing_year = 2016 ")
      @highsplinechart12 = YearTrend.find_by_sql("SELECT SUM(Dec_Stats) as abcd FROM year_trends where processing_year = 2016 ")


  #for year 2015
      @highspline1 = YearTrend.find_by_sql("SELECT SUM(Jan_Stats) as abcd FROM year_trends where processing_year = 2015 ")
      @highspline2 = YearTrend.find_by_sql("SELECT SUM(Feb_Stats) as abcd FROM year_trends where processing_year = 2015 ")
      @highspline3 = YearTrend.find_by_sql("SELECT SUM(Mar_Stats) as abcd FROM year_trends where processing_year = 2015 ")
      @highspline4 = YearTrend.find_by_sql("SELECT SUM(Apr_Stats) as abcd FROM year_trends where processing_year = 2015 ")
      @highspline5 = YearTrend.find_by_sql("SELECT SUM(May_Stats) as abcd FROM year_trends where processing_year = 2015 ")
      @highspline6 = YearTrend.find_by_sql("SELECT SUM(Jun_Stats) as abcd FROM year_trends where processing_year = 2015 ")
      @highspline7 = YearTrend.find_by_sql("SELECT SUM(Jul_Stats) as abcd FROM year_trends where processing_year = 2015 ")
      @highspline8 = YearTrend.find_by_sql("SELECT SUM(Aug_Stats) as abcd FROM year_trends where processing_year = 2015 ")
      @highspline9 = YearTrend.find_by_sql("SELECT SUM(Sept_Stats) as abcd FROM year_trends where processing_year = 2015 ")
      @highspline10 = YearTrend.find_by_sql("SELECT SUM(Oct_Stats) as abcd FROM year_trends where processing_year = 2015 ")
      @highspline11 = YearTrend.find_by_sql("SELECT SUM(Nov_Stats) as abcd FROM year_trends where processing_year = 2015 ")
      @highspline12 = YearTrend.find_by_sql("SELECT SUM(Dec_Stats) as abcd FROM year_trends where processing_year = 2015 ")

  end

  def getreports
    sourcereports1 = SourceReportsMapping.where(:year => params[:sourcereports1]).pluck(:report_id)
      binding.pry
      respond_to do |format|
          format.html
          format.json {render json: sourcereports1.to_json}
        end
  end

  def test2
    @dynamic_reports = params[:some_parameter].constantize
    binding.pry
    respond_to do |format|
    format.js {}
    end
  end
  



  def show
  end


  def getyear
       sourcereportsyear = SourceReportsMapping.where(:platform_id => params[:sourcereportsyear]).pluck(:year)
        respond_to do |format|
          format.html
          format.json {render json: sourcereportsyear.to_json}
        end
    end

  def sourcereports   
    @source_reports = SourceReportsMapping.find_by_sql("SELECT platform_id,GROUP_CONCAT(year) AS years FROM source_reports_mappings GROUP BY platform_id")
    @reports = Report.all
    @platforms = Platform.all
  end

  def accessdetails
     @platforms = Platform.all
  end

  def report
  end

  def selectedplatforms
    user_id = current_user.id
    @accounts = Account.where(:id => user_id ).first
    @platforms = PlatformReport.find_by_sql("SELECT platform_id,GROUP_CONCAT(report_id) AS reports FROM platform_reports GROUP BY platform_id")
    @repo = [ 1,2,3,4,5,6,7,8,9,10]
  end
end
