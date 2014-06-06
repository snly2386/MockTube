class CommentsController < ApplicationController

  def create
    @content = params[:content]
    @comment = Comment.create(:video_id => params[:video_id], :content => params[:content], :user_id => params[:user_id])
    @video = Video.find(params[:video_id])
    @user = User.find(params[:user_id])
    

    respond_to do |format| 
      format.html {redirect_to "/users/#{@user.id}/videos/#{@video.id}", flash: {success_comment: "Comment Successfully Created"}}
      format.js {render :layout => false}
      format.js do
        # render :layout => false
        render :json => { :foo => :bar }
      end
    end
  end
end
