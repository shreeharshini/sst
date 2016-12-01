class Account < ApplicationRecord
	has_many :source_reports_mapping
	has_many :platforms, :through => :source_reports_mapping
	has_many :reports, :through => :source_reports_mapping
		
end
