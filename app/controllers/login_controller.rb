class LoginController < ApplicationController
  def index
  	@user = User.new
  	@msg = ''
  end

  def check
  	# logger.debug params[:user][:name]
  	# logger.debug params[:user][:password]
  	user = User.where(name: params[:user][:name]).first
  	@user = User.new
	if user
		password = params[:user][:password]
		if password == user.password
			redirect_to main_index_path
		else
			respond_to do |format|
			@msg = 'UserNameかPasswordが間違っています'
			format.html { render :index }
        	format.json { render json: @msg, status: :unprocessable_entity }
        	end
		end
  	end
  end
end
