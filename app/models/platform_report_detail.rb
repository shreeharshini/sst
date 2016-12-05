class PlatformReportDetail < ApplicationRecord
	belongs_to :platform
	belongs_to :report
end
