class CommentsController < ApplicationController
  make_resourceful do
    belongs_to :agenda, :item
    actions :create, :destroy

    before :create do
      current_object.user = current_user if logged_in?
    end

    response_for :create do
      flash[:success] = "Comment added."
    end
    response_for :create_fails do
      flash[:error] = current_object.errors.full_messages.to_s
      redirect_to parent_object
    end
    response_for :destroy do
      flash[:success] = "Comment deleted."
      redirect_to parent_object
    end
  end
end
