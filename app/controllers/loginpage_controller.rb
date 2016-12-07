class LoginpageController < ApplicationController
  before_action :authenticate_user!
  def index
  end

  def show
  end

  def dynamicreports
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
    @platforms = Platform.all

    report_id = Report.last
    @reports = PlatformReport.where(["report_id = ?", report_id]).last
  
    # platform_id = SourceReportsMapping.platform_id.all
    # @reports = SourceReportsMapping.where(:id => platform_id).first
    # @reports = Report.all
    @repo = ["jr1","jr1a","jr2","jr3","jr5", "db1","db2","pr1","br1","br2"   
    ]
  end
end
