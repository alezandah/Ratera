class PostsController < ApplicationController
	before_action :set_post, only: [:show, :edit, :update, :delete, :destroy]
  
    def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def create
    @post = Post.new(post_params)
      if @post.save
        redirect_to(:action => 'index')
# , notice: 'post was successfully created.'
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
    end
  end

  def update
    respond_to do |format|
      if @post.update(post_params)
        redirect_to(:action => 'index')
        # format.html { redirect_to @post, notice: 'post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

end

def set_post
  @post = Post.find(params[:id])
end

def post_params
	params.require(:post).permit(:caption, :picture)
end