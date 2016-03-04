class UsersController < ApplicationController
	before_action :set_user, only: [:show, :edit, :update, :destroy]
	before_action :require_signin, except: [:new, :create]
	before_action :require_correct_user, only: [:update, :edit, :destroy]

	def index
	  @users = User.all
	end

	def edit
	end

	def new
		@user = User.new
	end

	def create
	  @user = User.new(user_params)

	  respond_to do |format|
	    if @user.save
	      format.html { redirect_to @user, notice: 'User was successfully created.' }
	      format.json { render :show, status: :created, location: @user }
	    else
	      format.html { render :new }
	      format.json { render json: @user.errors, status: :unprocessable_entity }
	    end
	  end
	end

def destroy
	if @user.destroy
		redirect_to 'index'
	else
		render "show"
	end
end

	private
	  def require_correct_user
	    @user = User.find(params[:id])
	    unless @user == current_user
	      redirect_to root_url, alert: "Finger weg, du perfider User, du!"
	    end
	  end

	private
	  # Use callbacks to share common setup or constraints between actions.
	  def set_user
	    @user = User.find(params[:id])
	  end

	 # Never trust parameters from the scary internet, only allow the white list through.
	 def user_params
	   params.require(:user).permit(:name, :email, :password, :password_confirmation)
	 end
end
