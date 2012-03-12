class ItemsController < ApplicationController
   def index
       @user = User.find(params[:user_id])
       @agenda = @user.agendas.find(params[:id])
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
       @agenda = @user.agendas.find(params[:agenda_id])
       @item = Item.new(params[:item])
       @item.agenda_id = @agenda.id
       if @item.save
       	  redirect_to user_agenda_path(@user, @agenda), :notice => flash["Successfully Added Item"]
       else
          render 'new', :action => flash[:error]
       end
   end
   
   def edit
   end   
   
   def update
   end
   
   def destroy
   end
end