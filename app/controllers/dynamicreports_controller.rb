class DynamicreportsController < ApplicationController
  def new
    @dynamic_reports = DynamicReports.new
  end

  def show
  	@dynamic_reports = DynamicReports.find(params[:id])
  end

  def list
    @dynamic_report = DynamicReports.all
  end

  def search
  	@results = Search.find(param)
  end

  def create
    @dynamic_reports = DynamicReports.new(dynamic_params)

    if @dynamic_report.save
      redirect_to :action => 'list'
    else
      @dynamic_reports = DynamicReports.all
      render :action => 'new'
    end

  def dynamic_params
  	params.require(:dynamic_reports).permit(:selectReportType, :firstyear, :firstmonth, 
  											:secondyear, :secondmonth)
  end
end
