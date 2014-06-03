class VideosController < ApplicationController
  def create
    @video = Video.create(:title => params[:title], :youtube_id => params[:youtube_id],:user_id => params[:user_id], :description => params[:description], :thumbnail => "http://img.youtube.com/vi/#{params[:youtube_id]}/1.jpg")
    redirect_to "/users/#{params[:user_id]}/videos/#{@video.id}"
  end

  def search
    @videos = Video.search(params[:search])
  end

  def show
    @video = Video.find(params[:id])
  end

  def index
    @videos = User.find(params[:user_id]).videos
    @user = User.find(params[:user_id])
  end

end
