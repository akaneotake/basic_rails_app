class PostsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    @post = Post.create(content: params[:content], user_id: params[:user_id])
    render 'posts/create.jbuilder'
  end

  def list
    @posts = Post.all
  end

  def update
    @update = Post.find(params[:id]).update(content: params[:content])
    render 'posts/update.jbuilder'
  end

  def delete
    @delete = Post.find(params[:id]).delete
    render 'posts/delete.jbuilder'
  end
end
