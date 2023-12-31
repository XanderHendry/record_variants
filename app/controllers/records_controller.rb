class RecordsController < ApplicationController
  def index
    @records = Record.all.order_by_most_recent
  end

  def show
    @record = Record.find(params[:id])
  end

  def new
  end

  def create
    Record.create({
      album: params[:album],
      artist: params[:artist],
      play_speed: params[:play_speed],
      double_lp: params[:double_lp]
    })
    
    redirect_to "/records"
  end

  def edit
    
    @record = Record.find(params[:id])
  end

  def update
    record = Record.find(params[:id])
    record.update(record_params)

    redirect_to "/records/#{record.id}"
  end

  private

  def record_params
    params.permit(:album, :artist, :play_speed, :double_lp)
  end
end