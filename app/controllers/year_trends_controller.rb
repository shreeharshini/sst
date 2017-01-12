class YearTrendsController < ApplicationController
  def index
  		@yeartrends = YearTrend.all
  	@yearusages = YearUsage.find_by_sql("SELECT Report_Type, SUM(YTD) as abc FROM year_usages GROUP BY Report_Type")
  
  	@topjournals = YearTopJournal.all
  	# @yearusages = YearUsage.find_by_sql("SELECT Report_Type, SUM(YTD) as abc FROM year_usages GROUP BY Report_Type")
	@topjournals.each do |f|
		test1 = f.institution_code
	 	res = LibraryCodeMapping.where(:Old_Code => test1)
	end  	
  end

  def highpiecharts
  # 	 @this_usage = YearUsage.find_by_sql("SELECT Report_Type, SUM(YTD) as abcd FROM year_usages GROUP BY Report_Type")
   
  #  # @abc = YearUsage.find_by_sql("SELECT Report_Type, SUM(YTD) as qwer FROM year_usages GROUP BY Report_Type").last
  # #for year 2016		
  # 		@highsplinechart1 = YearTrend.find_by_sql("SELECT SUM(Jan_Stats) as abcd FROM year_trends where processing_year = 2016")
  # 		@highsplinechart2 = YearTrend.find_by_sql("SELECT SUM(Feb_Stats) as abcd FROM year_trends where processing_year = 2016 ")
  # 		@highsplinechart3 = YearTrend.find_by_sql("SELECT SUM(Mar_Stats) as abcd FROM year_trends where processing_year = 2016 ")
  # 		@highsplinechart4 = YearTrend.find_by_sql("SELECT SUM(Apr_Stats) as abcd FROM year_trends where processing_year = 2016 ")
  # 		@highsplinechart5 = YearTrend.find_by_sql("SELECT SUM(May_Stats) as abcd FROM year_trends where processing_year = 2016 ")
  # 		@highsplinechart6 = YearTrend.find_by_sql("SELECT SUM(Jun_Stats) as abcd FROM year_trends where processing_year = 2016 ")
  # 		@highsplinechart7 = YearTrend.find_by_sql("SELECT SUM(Jul_Stats) as abcd FROM year_trends where processing_year = 2016 ")
  # 		@highsplinechart8 = YearTrend.find_by_sql("SELECT SUM(Aug_Stats) as abcd FROM year_trends where processing_year = 2016 ")
  # 		@highsplinechart9 = YearTrend.find_by_sql("SELECT SUM(Sept_Stats) as abcd FROM year_trends where processing_year = 2016 ")
  # 		@highsplinechart10 = YearTrend.find_by_sql("SELECT SUM(Oct_Stats) as abcd FROM year_trends where processing_year = 2016 ")
  # 		@highsplinechart11 = YearTrend.find_by_sql("SELECT SUM(Nov_Stats) as abcd FROM year_trends where processing_year = 2016 ")
  # 		@highsplinechart12 = YearTrend.find_by_sql("SELECT SUM(Dec_Stats) as abcd FROM year_trends where processing_year = 2016 ")


  # #for year 2015
  # 		@highspline1 = YearTrend.find_by_sql("SELECT SUM(Jan_Stats) as abcd FROM year_trends where processing_year = 2015 ")
  # 		@highspline2 = YearTrend.find_by_sql("SELECT SUM(Feb_Stats) as abcd FROM year_trends where processing_year = 2015 ")
  # 		@highspline3 = YearTrend.find_by_sql("SELECT SUM(Mar_Stats) as abcd FROM year_trends where processing_year = 2015 ")
  # 		@highspline4 = YearTrend.find_by_sql("SELECT SUM(Apr_Stats) as abcd FROM year_trends where processing_year = 2015 ")
  # 		@highspline5 = YearTrend.find_by_sql("SELECT SUM(May_Stats) as abcd FROM year_trends where processing_year = 2015 ")
  # 		@highspline6 = YearTrend.find_by_sql("SELECT SUM(Jun_Stats) as abcd FROM year_trends where processing_year = 2015 ")
  # 		@highspline7 = YearTrend.find_by_sql("SELECT SUM(Jul_Stats) as abcd FROM year_trends where processing_year = 2015 ")
  # 		@highspline8 = YearTrend.find_by_sql("SELECT SUM(Aug_Stats) as abcd FROM year_trends where processing_year = 2015 ")
  # 		@highspline9 = YearTrend.find_by_sql("SELECT SUM(Sept_Stats) as abcd FROM year_trends where processing_year = 2015 ")
  # 		@highspline10 = YearTrend.find_by_sql("SELECT SUM(Oct_Stats) as abcd FROM year_trends where processing_year = 2015 ")
  # 		@highspline11 = YearTrend.find_by_sql("SELECT SUM(Nov_Stats) as abcd FROM year_trends where processing_year = 2015 ")
  # 		@highspline12 = YearTrend.find_by_sql("SELECT SUM(Dec_Stats) as abcd FROM year_trends where processing_year = 2015 ")

  

  @acc = Account.where(:library_code => 16).first

  @abc = @acc.library_code

 @qwe = LibraryCodeMapping.where(:New_Code => @abc).first

@zxc =  @qwe.Old_Code


@testing = YearTopJournal.where(:institution_code => @zxc)

@testing1 = YearTrend.where(:institution_code => @zxc,:processing_year => 2015)

@testing2 = YearTrend.where(:institution_code => @zxc,:processing_year => 2016)

@test1 = YearUsage.where(:institution_code => @zxc)


  end

  def show
  end
end
