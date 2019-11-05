class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]


  def new
  end

  def create
  end

  def show

    if params[:id].to_i == current_user.id.to_i
      @current_user = current_user
    else
      redirect_to root_url
    end
 
  end

  def index
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
