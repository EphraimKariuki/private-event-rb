class EventsController < ApplicationController
  before_action  :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  
  def index
    @events = Event.all
  end
end
