class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @events = Event.joins("INNER JOIN events e, attendances ON attendances.user_id=#{@user.id} AND attendances.event_id=e.id").distinct
  end
end
