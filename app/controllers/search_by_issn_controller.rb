class SearchByIssnController < ApplicationController
	autocomplete :data_library, :print_issn,:full => true
	def index
		#@data_library = DataLibrary.all
	end

	def show
		
	end

	def new
		@data_library = DataLibrary.new
	end

	def create
  	end

	def search
		@suggestion = DataLibrary.pluck(:print_issn).last(10)
	end

	def load_suggestions
		if params[:select_type] == "JournalPrintISSN"
			@suggestion = DataLibrary.pluck(:print_issn).last(10)
		elsif params[:select_type] == "journalOnlineISSN"
			@suggestion = DataLibrary.pluck(:online_issn).last(10)
		elsif params[:select_type] == "bookISBN"
			@suggestion = DataLibrary.pluck(:isbn).last(10)
		else params[:select_type] == "bookISSN"
			@suggestion = DataLibrary.pluck(:issn).last(10)
		end
		respond_to do |format|
			format.json {render json: @suggestion.to_json}
		end
		#@suggestions = DataLibrary.select(:issn).where()#Select the data you want to load on the typeahead.
		#MyModel.find(:all, conditions: [...]) #Select the data you want to load on the typeahead.
		#render json: @suggestion
	end

	def csv
    	send_file Rails.root.join('files_for_download', "2016", 'COUNTER_Journal_Report_1_-_Article_Requests.csv'), :type=>"application/csv", :x_sendfile=>true
  	end
end
