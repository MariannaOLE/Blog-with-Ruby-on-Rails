class CommentsController < ApplicationController
    def create
        @tweet = Tweet.find(params[:tweet_id])
        
        @comment = @tweet.comments.build(comment_params)
        if @comment.save
            message = { notice: "Comment saved!" }
        else 
            message = { error: @comment.errors.full_messages.to_sentence }
            
        end
        
        redirect_to tweet_path(@tweet), flash: message
    end

private

def comment_params
    params.require(:comment).permit(:content)
end

end