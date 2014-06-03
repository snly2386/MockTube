class CommentsController < ApplicationController
  def create
    @comment = Comment.create(:video_id => params[:video_id], :content => params[:content])
    @video = Video.find(params[:video_id])
    flash[:success_comment] = "Comment Successfully Created"
    redirect_to "/videos/#{@video.id}"
  end
end
