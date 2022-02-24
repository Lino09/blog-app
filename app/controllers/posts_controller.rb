class PostsController < ApplicationController
  def index
    @user_id = params[:id]
  end

  def show
    @user_id = params[:id]
    @post_id = params[:post_id]
  end
end
