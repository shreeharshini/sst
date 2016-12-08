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

  
end
