class ImportDataController < ApplicationController
 
	#after_action :redirect_to_back, only: [:xlsx]
	def index
    @import_data = ImportData.all
	end
	def show
    render 'index'
    # @import_data = ImportData.find(params[:id])
	end
  # def redirect_to_back
  #   redirect_to :controller => 'import_data', :action => 'index'
  # end
	def new
    @import_data = ImportData.new
  end
  def create
    @import_data = ImportData.new(import_data_params)
    if @import_data.save
      redirect_to import_data_path, notice: "The file has been uploaded."
    else
      render "new"
    end
  end

	def xlsx
    send_file Rails.root.join('files_for export', 'price_per_Use_Template.xlsx'), :type=>"application/xlsx", :x_sendfile=>true
	end

  private
  def import_data_params
    params.require(:import_data).permit(:attachment)
  end
  #end
end