class ReportsController < ApplicationController
  def index
    @reports = Report.all
     respond_to do |format|
          format.html
          format.xlsx {
        response.headers['Content-Disposition'] = 'attachment; filename="reports.xlsx"'
      }
      end
  end

  def show
  end

  def new
  end

  def create
  end

  def destroy
  end
end
