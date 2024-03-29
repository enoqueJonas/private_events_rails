class EventsController < ApplicationController

  def index
    @future_events = Event.future_events(Date.current)
    @past_events = Event.past_events(Date.current)
  end

  def new
    @user = User.find(params[:user_id])
    @event = Event.new
  end

  def create
    @user = User.find(params[:user_id])
    @event_creation = EventCreation.new
    @event = @event_creation.build_created_event(events_params)
    @event_creation.event_creator = @user
    if @event.save
      @event_creation.save
      redirect_to user_events_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def events_params
    params.require(:event).permit(:title, :location, :date)
  end

  def show
    @event = Event.find(params[:id])
    @attendees = @event.attendees
  end
end
