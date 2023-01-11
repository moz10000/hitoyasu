class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def new
    @rooms = Room.all
    @room = Room.new
  end

  def create
    @rooms = Room.all

  end

  def show
    @rooms = Room.all

  end

  def edit
    @rooms = Room.all

  end

  def update
    @rooms = Room.all

  end


  def destroy
    @rooms = Room.all
  end



end
