class EventsController < ApplicationController
 

  def new
  end

  def create
  end

  def show

  end

  def index
    @events = Event.all
    @users = User.all
    @current_user = current_user
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
