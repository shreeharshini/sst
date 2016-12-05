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
    @reports = Report.all
    @box = PlatformReport.all
    @repo = ["JR1","JR1a","JR2","JR3","JR5", "DB1","DB2","PR1","BR1","BR2"   
    ]
  end
end
