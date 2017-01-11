class LoginpageController < ApplicationController
  respond_to :html, :js
  before_action :authenticate_user!

  def index
    @acc = Account.where(:library_code => 16).first
<<<<<<< HEAD
    @libcode = @acc.library_code
    @libres = LibraryCodeMapping.where(:New_Code => @libcode).first
    @libcode = @acc.library_code
=======

    @libcode = @acc.library_code
>>>>>>> 35fcfc73d526c616931f96f71d95a8d299d21646
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
        @repos = Report.where(:year => params[:trip][:year], :platform_id => params[:trip][:platform_id])
      @repos.each do |f|
      @plts = Platform.where(:id => f.platform_id)
      @user_id = current_user.id
      @acc = Account.where(:id => @user_id)
    end
  end

  def getreports
<<<<<<< HEAD
    byebug
    # sourcereports1 = SourceReportsMapping.where(:year => params[:sourcereports1]).pluck(:report_id)
      @sourcereports = SourceReportsMapping.where(:year => params[:sourcereports])
=======
binding.pry
    @years = Report.where("platform_id = ?", params[:platform_id])
    flash[:notice] = "Post successfully created"
    respond_to do |format|
      format.js
    end
>>>>>>> 35fcfc73d526c616931f96f71d95a8d299d21646
     
  end

  def dynamicreports
    acc_id = current_user.account_id
    @lib_code = Libcodewithlibreporttype.where(:libcode => acc_id).pluck(:Report_Type)
    byebug
<<<<<<< HEAD
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
        format.json { render json: sourcereports2.to_json}
  end
end
=======
        @sourcereports = SourceReportsMapping.where(:year => params[:sourcereports]).pluck(:report_id)
        respond_to do |format|
          format.html
          format.json {render json: @sourcereports.to_json}
        end
  end

 
 
>>>>>>> 35fcfc73d526c616931f96f71d95a8d299d21646

  def test2
    byebug
    acc_id = current_user.account_id
    @lib_code = Libcodewithlibreporttype.where(:libcode => acc_id).pluck(:Report_Type)
    @dynamic_reports = params[:Report_Type].strip
    @aa = "lib"+"_"+acc_id.to_s+"_"+@dynamic_reports
    respond_to do |format|
    format.js {}
    end
  end

<<<<<<< HEAD
  # def test2
  #   byebug
  #   @dynamic_reports = params[:some_parameter].constantize
  #   byebug
  #   respond_to do |format|
  #   format.js {}
  #   end
  # end

  def show
  end
=======
  
  

>>>>>>> 35fcfc73d526c616931f96f71d95a8d299d21646

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
