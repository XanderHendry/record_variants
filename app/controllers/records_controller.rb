class RecordsController < ApplicationController
  def index
    @records = Record.all.order_by_most_recent
  end

  def show
    @record = Record.find(params[:id])
  end
end