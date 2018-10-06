class PostsController < ApplicationController
  def index
  	posts = Post.all
  	render json: posts
  end

  def create
  	post = Post.create(get_params)
  	render json: post
  end

  def destroy
  	post = Post.find(params[:id]).destroy
  	render json: post
  end

  def update
  	post = Post.find(params[:id])
  	post.update(get_params)
  	render json: post
  end

  private
  def get_params
  	{command: params[:command], message: params[:message]}
  end
end
