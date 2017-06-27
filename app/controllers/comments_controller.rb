class CommentsController < ApplicationController
	def create
  @comment = Comment.new(comment_params)
  @comment.article_id = params[:article_id]

  @comment.save

  redirect_to article_path(@comment.article)
end
def destroy
  @comment = Comment.find(params[:id])
  @comment.destroy
  flash.notice = "Article '#{@article.title}' Deleted!"

  redirect_to articles_path

end

def comment_params
  params.require(:comment).permit(:author_name, :body)
end
end
