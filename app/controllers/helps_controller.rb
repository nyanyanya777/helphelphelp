class HelpsController < ApplicationController
 def index
   @helps = Help.page(params[:page])
 end

 def new
   @help = Help.new
 end

 def create
   Help.create(helps_params)
   redirect_to helps_path
 end

 def show
   @help = Help.find(params[:id])
 end

 def destroy
   @help = Help.find(params[:id])
 end

 private
 def helps_params
   params.require(:help).permit(:content,:url,:bill)
 end

end
