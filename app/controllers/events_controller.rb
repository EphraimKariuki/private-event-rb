class EventsController < ApplicationController
  before_action :authenticate_user!, only: [ :new, :create ]

  def index
    @events = Event.all
  end
  def new
    @event = current_user.created_events.new
  end
  def create
    @event = current_user.created_events.new(event_params)
    if @event.save
      redirect_to user_path(current_user), notice: "Event was successfully created."
    else
      render :new
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
    @user = current_user
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to user_path(current_user), notice: "Event was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to user_path(current_user), notice: "Event was successfully deleted."
  end

  private
  # Strong parameters for event creation
  def event_params
    params.expect(event: [ :name, :description, :time, :location ])
  end
end
