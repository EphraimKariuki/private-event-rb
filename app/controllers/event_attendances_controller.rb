class EventAttendancesController < ApplicationController
before_action :authenticate_user!, only: [ :new, :create, :destroy ]

  def index
    @event_attendances = EventAttendance.all
  end
  def new
    @event_attendace = EventAttendance.new
  end

  def create
    @event = Event.find(params[:event_id])


    @attendance = @event.event_attendances.new(event_attendee: current_user)
    if @attendance.save
      redirect_to event_path(@event), notice: "Attendance was successfully created."
    else
      redirect_to event_path(@event), alert: "Attendance was not created."
    end
  end

  def destroy
    @event = Event.find(params[:event_id])
    @attendance = @event.event_attendances.find_by(event_attendee_id: current_user.id)
    @attendance.destroy
    redirect_to event_path(@event), notice: "Attendance was successfully deleted."
  end
end
