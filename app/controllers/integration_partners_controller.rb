class IntegrationPartnersController < ApplicationController
	def index
		@sushi_partner_deatils = SushiPartner.all
	end
	def manage_sushi_account
		@edit_sushi_partner = SushiPartner.find(params[:@sushi_partner_id]) 
	end
	def update_permission
		if params[:selectedAcountId].present?
			@edit_sushi_partner = SushiPartner.find(params[:id])
			@edit_sushi_partner.is_permitted = 1
	     	if @edit_sushi_partner.save!
		  		@sushi_partner_deatils = SushiPartner.all
				render 'index'
		       
			end
		else
			@sushi_partner_deatils = SushiPartner.all
			render 'index'
		end
	end
end
