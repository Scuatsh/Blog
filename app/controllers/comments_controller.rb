class CommentsController < ApplicationController
  def create
  	@post = Post.find(params[:post_id])
  	@comment = @post.comments.build(params.permit[:comment])
  	@comment.save
  	redirect_to @posts
  end

  def destroy
  end
   private

  def comment_params
      params.require(:comment).permit(:text)
   end

end
