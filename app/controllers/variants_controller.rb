class VariantsController < ApplicationController
  def index
    @records = Record.all
    @variants = Variant.all
    #  binding.pry
  end

  def show
    @variant = Variant.find(params[:id])
  end

  def edit
    @variant = Variant.find(params[:id])
  end

  def update
    @variant = Variant.find(params[:id])
    @variant.update(variant_params)
    redirect_to "/variant/#{@variant.id}" 
  end

  private
  def variant_params
    params.permit(:color, :copies, :serialized)
  end
end