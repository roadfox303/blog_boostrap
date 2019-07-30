class BlogsController < ApplicationController
  before_action :set_id, only: [:show, :destroy, :edit]
  def index
    @blogs = Blog.all
    @blog = Blog.new
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.create(blog_params)
    redirect_to blogs_path
  end

  def edit

  end

  def update
    @blog = Blog.find(params[:id])
    @blog.update(blog_params)
    redirect_to blogs_path
  end

  def destroy
    @blog.destroy
    redirect_to blogs_path
  end

  def show
  end

  private
  def blog_params
    params.require(:blog).permit(:title, :content)
  end

  def set_id
    @blog = Blog.find(params[:id])
  end

end
