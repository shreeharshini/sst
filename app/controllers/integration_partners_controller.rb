class IntegrationPartnersController < ApplicationController
	def index
		@sushi_partner_deatils = SushiPartner.all
	end
	def edit_permission
		byebug
	end
end
