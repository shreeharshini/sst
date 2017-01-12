class LoginpageController < ApplicationController
   
    respond_to :html, :js
    before_action :authenticate_user!

  def index
    #find account_id of signedin user
    @useracc_id = current_user.account_id
    #find account record based on user's account_id
    @acc = Account.where(:id => @useracc_id).first
    #find library code
    @libcode = @acc.library_code
    #find new_code based on librarycode of that account
    @libres = LibraryCodeMapping.where(:New_Code => @libcode).first
    @code =  @libres.Old_Code
    #for graphs
    @barres = YearTopJournal.where(:institution_code => @code)
    @splineres2015 = YearTrend.where(:institution_code => @code,:processing_year => 2015)
    @splineres2016 = YearTrend.where(:institution_code => @code,:processing_year => 2016)
    @pieres = YearUsage.where(:institution_code => @code)
  end

  def sourcereports 
    @plats = Platform.all
    @years = SourceReportsMapping.where("platform_id = ?", Platform.first.id)
  end

  def show
      
  end

 

  def result
      @repos = Report.where(:year => params[:sourcerepo][:year], :platform_id => params[:sourcerepo][:platform_id])  
        @repos.each do |f|
          @plts = Platform.where(:id => f.platform_id)
          @user_id = current_user.id
          @acc = Account.where(:id => @user_id)
        end
  end

  def getreports
    @years = Report.where("platform_id = ?", params[:platform_id]) 
    respond_to do |format|
      format.js
    end  
  end


  def dynamicreports
    acc_id = current_user.account_id
    @lib_code = Libcodewithlibreporttype.where(:libcode => acc_id).pluck(:Report_Type)

  end

  def test2
    acc_id = current_user.account_id
    @lib_code = Libcodewithlibreporttype.where(:libcode => acc_id).pluck(:Report_Type)
    @dynamic_reports = params[:Report_Type].strip
    aa = "Lib"+"_"+acc_id.to_s+"_"+@dynamic_reports.downcase!
    @report_data = aa.constantize.all
    if @dynamic_reports == "jr1"
      render :partial => "jr1"
    elsif @dynamic_reports == "jr2"
      render :partial => "jr2"
    elsif @dynamic_reports == "jr3"
      render :partial => "jr3"
    elsif @dynamic_reports == "jr1a"
      render :partial => "jr1a"
    elsif @dynamic_reports == "br1"
      render :partial => "br1"
    elsif @dynamic_reports == "br2"
      render :partial => "br2"
    elsif @dynamic_reports == "db1"
      render :partial => "db1"
    elsif @dynamic_reports == "db2"
      render :partial => "db2"
    elsif @dynamic_reports == "pr2"
      render :partial => "pr2"
    respond_to do |format|
    format.js {}
      end
    end
  end

  # def test2
  #   @dynamic_reports = params[:some_parameter].constantize
  #   respond_to do |format|
  #   format.js {}
  #   end
  # end


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
