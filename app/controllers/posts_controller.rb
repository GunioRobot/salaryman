class PostsController < ApplicationController
  before_filter :find_topic
  before_filter :find_post,  :except => [:index, :new, :create]

  def index
    @posts = @topic.posts
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = @topic.posts.new(params[:post])
    if @post.save
      redirect_to [@topic, @post]
    else
      render :new
    end
  end

  def update
  end

  def destroy
  end

  private

  def find_post
    @post = Post.find(params[:id])
  end

  def find_topic
    @topic = Topic.find(params[:topic_id])
  end
end
