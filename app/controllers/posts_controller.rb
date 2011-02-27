class PostsController < ApplicationController

before_filter :authenticate_user!
  
  def new
    @title = "new post"
    @post = Post.new
  end

  def show
  end

  def edit
  end

  def destroy
  end

  def create
    @post = current_user.posts.build(params[:post])
    if @post.save
      flash[:notice] = "Post Created"
      redirect_to root_path
    else
      render 'posts/new'
    end
  end

end