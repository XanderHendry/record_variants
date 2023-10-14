class RecordVariantsController < ApplicationController
  def index
    @record = Record.find(params[:record_id])
    @variants = @record.variants
  end
end