class User < ApplicationRecord
	has_one :account
	has_one :account_info ,:through =>:account

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # before_action :authenticate_user!
	# To verify if a user is signed in, use the following helper:
	# user_signed_in?

	# For the current signed-in user, this helper is available:
	# current_user

	# You can access the session for this scope:
	# user_session
end
