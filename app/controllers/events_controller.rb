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
      redirect_to events_path, notice: "Event was successfully created."
    else
      render :new
    end
  end

  private
  # Strong parameters for event creation
  def event_params
    params.expect(event: [ :name, :description, :time, :location ])
  end
end
