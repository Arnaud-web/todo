class PasswordsController < ApplicationController

	skip_before_action :only_signed_in
	before_action :user_signed_in? 



			def new


			end

			def create
				user_params = params.require(:user)
				@user = User.find_by_email(user_params[:email])

				if @user

						@user.regenerate_recover_password
						UserMailer.password(@user).deliver_now
						redirect_to new_session_path, success: 'Un email vous a été envoyé'


				else
					redirect_to new_password_path, danger: 'Aucun utilisateur ne correspond à cet email'
				end



			end








end