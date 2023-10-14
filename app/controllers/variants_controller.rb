class VariantsController < ApplicationController
 def index
   @records = Record.all
   @variants = Variant.all
  #  binding.pry
 end
end