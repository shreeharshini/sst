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

	def search
	end


  def show_report

  end

	def load_suggestions
		byebug
		if params[:data_library][:select_type] == "Journal Print ISSN"
			@suggestion = DataLibrary.find(1)
		elsif params[:data_library][:select_type] == "journal Online ISSN"
			@suggestion = DataLibrary.find(1)
		elsif params[:data_library][:select_type] == "bookISBN"
			@suggestion = DataLibrary.find(1)
		else params[:data_library][:select_type] == "bookISSN"
			@suggestion = DataLibrary.find(1)
		end
		@suggestion = DataLibrary.find(1)
		#@suggestions = DataLibrary.select(:issn).where()#Select the data you want to load on the typeahead.
		#MyModel.find(:all, conditions: [...]) #Select the data you want to load on the typeahead.
		#render json: @suggestion
	end
end
