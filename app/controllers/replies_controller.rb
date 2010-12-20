class RepliesController < ApplicationController

  def create
    @post = Post.find(params[:post_id]) 
    @reply = @post.replies.new(params[:reply])
    @reply.save
    redirect_to [@post.topic, @post] 
  end

end
