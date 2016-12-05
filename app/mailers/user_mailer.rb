# class UserMailer < ApplicationMailer
# 	default from: "mpsscholarlystats@gmail.com"

# 	layout "mailer"

# 	def welcome_email(contactu)
# 	 binding.pry
# 	 @contact_u = contactu
# 	  mail(to: @contact_u.name, subject: 'Welcome to My Awesome Site')
# 	end
# end

class UserMailer < ApplicationMailer
	default from: "mpsscholarlystats@gmail.com"

	def welcome_email(contactu)
		binding.pry
	 @contact_u = contactu
	  mail(to: @contact_u.email, subject: 'Welcome to My Awesome Site')
	end
end
