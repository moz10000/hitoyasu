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
    @room = Room.new(params.require(:room).permit(:name, :intro, :price, :area, :image_name))
    if @room.save
      flash[:notice] = "施設を新規登録しました"
      redirect_to :rooms
     else
      flash[:notice] = "登録に失敗しました"
       render "new"
    end

  end

  def show
    @rooms = Room.all
    @room = Room.find(params[:id])

  end

  def edit
    @rooms = Room.all
    @room = Room.find(params[:id])

  end

  def update
    @rooms = Room.all
    @room = Room.find(params[:id])
     if @room.update(params.require(:room).permit(:title, :start_date, :end_date, :all_day, :memo))
       flash[:notice] = "IDが「#{@room.id}」の情報を更新しました"
       redirect_to :rooms
     else
       flash[:notice] = "更新に失敗しました"
       render "edit"
     end

  end


  def destroy
    @rooms = Room.all
    @room = Room.find(params[:id])
    @room.destroy
    flash[:notice] = "施設情報を削除しました"
    redirect_to :rooms
  end



end
