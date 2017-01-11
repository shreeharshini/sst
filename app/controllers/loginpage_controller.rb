class LoginpageController < ApplicationController
  respond_to :html, :js
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
  binding.pry  
    @plats = Platform.all
    @years = SourceReportsMapping.where("platform_id = ?", Platform.first.id)
     
  end

  def show
     binding.pry
        @repos = Report.where(:year => params[:sourcerepo][:year], :platform_id => params[:sourcerepo][:platform_id])
      
      @repos.each do |f|
      @plts = Platform.where(:id => f.platform_id)
      @user_id = current_user.id
      @acc = Account.where(:id => @user_id)
    end
  end

  def getreports
binding.pry
    @years = Report.where("platform_id = ?", params[:platform_id])
    if @years.blank?
        flash[:notice] = "sdfdf"
    else
    respond_to do |format|
      format.js
    end
    end
     
  end

  def dynamicreports
    byebug
        @sourcereports = SourceReportsMapping.where(:year => params[:sourcereports]).pluck(:report_id)
        respond_to do |format|
          format.html
          format.json {render json: @sourcereports.to_json}
        end
  end

 
 

  def test2
    @dynamic_reports = params[:dynamic_drop].constantize
    byebug
    respond_to do |format|
    format.js {}
    end
  end

  
  


  def accessdetails
     @platforms = Platform.all
  end

  

  def selectedplatforms
    user_id = current_user.id
    @accounts = Account.where(:id => user_id ).first
    @platforms = PlatformReport.find_by_sql("SELECT platform_id,GROUP_CONCAT(report_id) AS reports FROM platform_reports GROUP BY platform_id")
    @repo = [ 1,2,3,4,5,6,7,8,9,10]
  end
end
