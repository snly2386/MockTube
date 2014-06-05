class VideosController < ApplicationController
  def create
    @video = Video.create(:title => params[:title], :youtube_id => params[:youtube_id],:user_id => params[:user_id], :description => params[:description], :thumbnail => "http://img.youtube.com/vi/#{params[:youtube_id]}/1.jpg")
    
    respond_to do |format| 
      format.html {redirect_to "/users/#{params[:user_id]}/videos/#{@video.id}", flash: {success: 'Video successfully created.'}}
    end
    # redirect_to "/users/#{params[:user_id]}/videos/#{@video.id}"
    # flash: {success: 'Comment successfully created.'}
  end

  def search
    @videos = Video.search(params[:search])
    @user_id = params[:id]
  end

  def show
    @video = Video.find(params[:id])
    @comments = @video.comments
    @user_ids = []
    @user_names = []
    @comments.each do |comment| 
      @user_ids.push(comment.user_id)
    end
    @user_ids.each do |user_id|
      @user_names.push(User.find(user_id).username)
    end
  end

  def index
    @videos = User.find(params[:user_id]).videos
    @user = User.find(params[:user_id])
  end




end
