class HelpsController < ApplicationController
 def index
   @helps = Help.page(params[:page])
   respond to |format|
    format.html
    format.js
 end

 def new
   @help = Help.new
 end

 def create
   @help = Help.new(helps_params)
   @help.user_id = current_user.id
   if @help.save
   redirect_to helps_path
 else
   redirect_to helps_new_path
 end
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
