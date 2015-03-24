class CommentsController < ApplicationController
  before_filter :get_post

  def create
  	@comment = @post.comments.build(params.permit[:comment])
  	@comment.save
  	redirect_to @post
  end

  def destroy
  end
  
  private

  def get_post
    @post = Post.find(params[:post_id])
  end

  def comment_params
    params.require(:comment).permit(:text)
  end

end
