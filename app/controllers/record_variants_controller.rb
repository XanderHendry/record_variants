class RecordVariantsController < ApplicationController
  def index
    @record = Record.find(params[:record_id])
    @variants = @record.variants
  end

  def new
    @record = Record.find(params[:record_id])
  end

  def create
    @record = Record.find(params[:record_id])
    variant = @record.variants.create!({color: params[:color], copies: params[:copies], serialized: params[:serialized]})
    redirect_to "/records/#{@record.id}/variants"
  end
end