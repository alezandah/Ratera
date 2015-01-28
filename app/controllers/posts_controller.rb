class PostsController < ApplicationController
  def index
  end

  def show
  end

  def edit
  end
end

def post_params
	params.require(:post).permit(:caption, :picture)
end