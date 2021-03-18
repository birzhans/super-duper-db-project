class RoomsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_rooms, only: %i[index]
  before_action :set_room, only: %i[show edit update destroy]

  def index
  end

  def show
  end

  def new
    @room = Room.new
  end

  def create
    @room = current_user.rooms.new(room_params)
    @room.code = Room.get_code

    if @room.save
      redirect_to @room
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_rooms
    @rooms = Room.all
  end

  def set_room
    @room = Room.find(params[:id])
  end

  def room_params
    params.require(:room).permit(:title, :private)
  end
end
