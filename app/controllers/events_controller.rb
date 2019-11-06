class EventsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def new
    @event = Event.new
  end

  def create
   
    @event = Event.new(
      title:params[:title],
      description:params[:description],
      location:params[:location],
      price:params[:price],
      duration:params[:duration],
      start_date:params[:start_date],
      )
    @event.admin = current_user

      if @event.save
        redirect_to @event, flash: {success: "Vous avez cree un nouvel evenement" }
      else
         render :new
      end
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
