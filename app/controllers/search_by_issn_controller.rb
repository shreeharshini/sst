class SearchByIssnController < ApplicationController
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

	def search_type
		if params[:select_type] == "JournalPrintISSN"
			@suggestion = DataLibrary.find(1)
		elsif params[:select_type] == "journalOnlineISSN"
			@suggestion = DataLibrary.find(1)
		elsif params[:select_type] == "bookISBN"
			@suggestion = DataLibrary.find(1)
		else params[:select_type] == "bookISSN"
			@suggestion = DataLibrary.find(1)
		end
	end


  def show_report

  end

	def load_suggestions
		#@suggestions = DataLibrary.select(:issn).where()#Select the data you want to load on the typeahead.
		#MyModel.find(:all, conditions: [...]) #Select the data you want to load on the typeahead.
		#render json: @suggestion
	end
end
