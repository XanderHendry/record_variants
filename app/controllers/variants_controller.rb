class VariantsController < ApplicationController
 def index
   @records = Record.all
   @variants = Variant.all
  #  binding.pry
 end

 def show
  @variant = Variant.find(params[:id])
 end
end