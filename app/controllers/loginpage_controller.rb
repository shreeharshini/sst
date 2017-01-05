class LoginpageController < ApplicationController
  before_action :authenticate_user!

  def index
    @acc = Account.where(:library_code => 16).first
    @libcode = @acc.library_code
    @libres = LibraryCodeMapping.where(:New_Code => @libcode).first
    @code =  @libres.Old_Code
#for graphs
    @barres = YearTopJournal.where(:institution_code => @code)
    @splineres2015 = YearTrend.where(:institution_code => @code,:processing_year => 2015)
    @splineres2016 = YearTrend.where(:institution_code => @code,:processing_year => 2016)
    @pieres = YearUsage.where(:institution_code => @code)

  end

  def sourcereports   
    @source_reports = SourceReportsMapping.find_by_sql("SELECT platform_id,GROUP_CONCAT(year) AS years FROM source_reports_mappings GROUP BY platform_id")
    @reports = Report.all
    @platforms = Platform.all
  end

  def getreports
      byebug
        @sourcereports = SourceReportsMapping.where(:year => params[:sourcereports]).pluck(:report_id)
        respond_to do |format|
          format.html
          format.json {render json: @sourcereports.to_json}
        end
  end

  def getyear
       sourcereportsyear = SourceReportsMapping.where(:platform_id => params[:sourcereportsyear]).pluck(:year)
        respond_to do |format|
          format.html
          format.json {render json: sourcereportsyear.to_json}
        end
    end
    
  def getreports2
   
    sourcereports2 = Report.where(:id => params[:sourcereports2]).pluck(:name)
      respond_to do |format|
        format.html
        format.json { render json: sourcereports2.to_json }
  end
end

  def test2
    @dynamic_reports = params[:some_parameter].constantize
    byebug
    respond_to do |format|
    format.js {}
    end
  end
  



  def show
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
