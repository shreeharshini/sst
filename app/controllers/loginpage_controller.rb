class LoginpageController < ApplicationController
  before_action :authenticate_user!
  def index
   @yearusages = YearUsage.all
  end

 

  def show
  end

  def test2
    @dynamic_reports = params[:some_parameter].constantize.all
    binding.pry
    # some_parameter = Dynamicreport.find_by_platform_id(params[:some_parameter])
    respond_to do |format|
    format.js {}
    end
  end
  


  def sourcereports 	
    @source_reports = SourceReportsMapping.all
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
    
    # @platid = PlatformReport.select("MIN(id) as id").group(:platform_id).collect(&:id)
    @platforms = PlatformReport.find_by_sql("SELECT platform_id,GROUP_CONCAT(report_id) AS reports FROM platform_reports GROUP BY platform_id")
   
    @repo = [1,2,3,4,5,6,7,8,9,10]

    # @previous = PlatformReport.all
  end
end
