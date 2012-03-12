class ItemsController < ApplicationController
   def show
    @user = User.find(params[:user_id])
    @agenda = @user.agendas.find(params[:agenda_id])
    @item = @agenda.items.find(params[:id])
   end
   
   def new
       @user = current_user
       @agenda = @user.agendas.find(params[:agenda_id])
       @item = Item.new
   end
   
   def create
       @user = current_user
       @agenda = @user.agendas.find(params[:agenda_id])
       @item = Item.new(params[:item])
       @item.agenda_id = @agenda.id
       if @item.save
       	  redirect_to user_agenda_path(@user, @agenda), :notice => "Successfully added item."
       else
          render 'new', :error => "Failed to create item."
       end
   end
   
   def edit
   end   
   
   def update
   end
   
   def destroy
   end
end
