class ItemsController < ApplicationController
   def index
       @user = User.find(params[:id])
       @agenda = @user.agendas.find(params[:agenda_id])
       @items = @agenda.items      
   end
   
   def show
       
   end
   
   def new
       @user = current_user
       @agenda = @user.agendas.find(params[:agenda_id])
       @item = Item.new
   end
   
   def create
       @user = current_user
       @agenda = @user.agendas.find([:agenda_id])
       @item = Item.new(params[:item])
       if @item.save
       	  redirect_to user_agenda_path(@user, @agenda), :notice = "Successfully Added Item"
       else
          render 'new', :error = "Failed to save item"
       end
   end
   
   def edit
   end   
   
   def update
   end
   
   def destroy
   end
end