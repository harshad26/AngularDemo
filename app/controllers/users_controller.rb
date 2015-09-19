class UsersController < ApplicationController
  respond_to :json
  def index
    respond_to do |format|
      format.json { render json: User.all }
      format.html
    end
  end
  def new
    @user = User.new
  end

  def create
    @user = User.create(visitor_params)
    redirect_to root_path 
    
  end

  def destroy
    respond_with User.destroy(params[:id])
  end
  def show
  @user = User.find(params[:id])
  respond_to do |format|
    format.html # show.html.erb
    format.pdf do
      render :pdf => "report",:template => "users/show"
    end 
  end
end

private
  def visitor_params
    params.require(:user).permit(:first_name, :last_name, :email, :phone_no, :dob)
  end
end
