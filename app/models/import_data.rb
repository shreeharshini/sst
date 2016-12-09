class ImportData < ApplicationRecord
	mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
	#before_save :set_user_id


	# def set_user_id
	# 	@import_data = params
	# end
end
