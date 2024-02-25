class AttendancesController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @attendance = Attendance.new(user_id: current_user.id, event_id: @event.id)

    if @attendance.save
      flash[:success] = "Attendace saved!"
      redirect_to user_events_url
    else
      render user_events_url(user_id: current_user.id, event_id: @event.id), status: :unprocessable_entity
    end
  end
end
