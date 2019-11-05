class EventsController < ApplicationController
    before_action :authenticate_user!, only: [:show]

  def new
  end

  def create
  end

  def show
    @event = Event.find(params[:id])
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
