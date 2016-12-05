class AccountPlatformDetail < ApplicationRecord
	belongs_to :account
	belongs_to :platform
end
