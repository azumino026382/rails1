class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
    @today = Date.current.to_s(:datetime_jp)
    @schedules_count = Schedule.all.count
  end

  def new
    @schedule = Schedule.new
  end

  def create
    @schedule = Schedule.new(params.require(:schedule).permit(:title, :start, :end, :all, :memo))
    if @schedule.save
      flash[:notice] = "予定を新規登録しました"
      redirect_to schedules_path
    else
      render "new"
    end  
  end

  def show
    @schedule = Schedule.find(params[:id])
  end

  def edit
    @schedule = Schedule.find(params[:id])
  end

  def update
    @schedule = Schedule.find(params[:id])
    if @schedule.update(params.require(:schedule).permit(:title, :start, :end, :all, :memo))
      flash[:notice] = "「#{@schedule.id}」の予定を更新しました"
      redirect_to :schedules
    else
      render "edit"
    end
  end

  def destroy
    @schedule = Schedule.find(params[:id])
    @schedule.destroy
    flash[:notice] = "予定を削除しました"
    redirect_to :schedules
  end
end


