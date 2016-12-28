class IntegrationPartnersController < ApplicationController
	def index
		@sushi_partner_deatils = SushiPartner.all
	end
	def manage_sushi_account
		@edit_sushi_partner = SushiPartner.find(params[:@sushi_partner_id]) 
	end
	def update_permission
		byebug
		
		# @edisushi_partner.is_permitted = params[:is_permitted]
  #   	if @edit_sushi_partner.save!
  #     		redirect_to integration_partners_path, notice: "Permission updated."
		# end
	end
end
