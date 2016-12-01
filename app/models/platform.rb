class Platform < ApplicationRecord
	has_many :source_reports_mapping
	has_many :reports, :through => :source_reports_mapping
	has_many :accounts, :through => :source_reports_mapping

end
