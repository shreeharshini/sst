class PlatformReportsController < ApplicationController

  def index
  	  	binding.pry
  	@platform_reports = PlatformReport.all
  end

  def new
  	  	binding.pry

  	@platform_report = PlatformReport.new
  end

  def create
  	  	binding.pry

  	@platform_report = PlatformReport.new(platform_reports_params)
  	if @platform_report.save
  		redirect_to platform_reports_path
  		else
  			render 'new'
  	end
  end
 private 

 def platform_reports_params
 	params.require(:platform_report).permit(:platform_id, :report_id)
 end
end
