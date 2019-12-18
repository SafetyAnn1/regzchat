class RoomsController < ApplicationController
  # Loads:
  # @rooms = all rooms
  # @room = current room when applicable
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :load_entities

  def index
    @rooms = Room.all
    @room = Room.new
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new permitted_parameters

    if @room.save
      flash[:success] = "Your room #{@room.name} was CREATED successfully! Click the desired room AND START CHATTING"
      redirect_to rooms_path
    else
      render :index
    end
  end

  def show
    @room_message = RoomMessage.new room: @room
    @room_messages = @room.room_messages.includes(:user)
  end

  def edit
  end

  def destroy
    @room.destroy
    flash[:danger] = "Your room #{@room.name} was DELETED successfully!  Click the desired room AND START CHATTING."
    redirect_to rooms_path
  end

  def update
    if @room.update_attributes(permitted_parameters)
      flash[:info] = "Your room #{@room.name} was UPDATED successfully!"
      redirect_back fallback_location: rooms_path
    else
      render :index
    end
  end

  protected

  def load_entities
    @rooms = Room.all
    @room = Room.find(params[:id]) if params[:id]
  end

  def permitted_parameters
    params.require(:room).permit(:name)
  end
end
