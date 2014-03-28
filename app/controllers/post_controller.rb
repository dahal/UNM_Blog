class PostController < ApplicationController
  before_action = list_post, only: [:index, :create, :show, :new]
  def index
  	@posts = Post.all
  end

  def create
  end

  def show
  end

  def new
  	@post = Post.new
  end

  private
  #Keep it dry, since we repeat this on almost all
  def list_post
  	@post = Post.find(params[:id])
  end
end
