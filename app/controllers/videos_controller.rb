class VideosController < ApplicationController
  def create
    @video = Video.create(:title => params[:title], :youtube_id => params[:youtube_id], :description => params[:description], :id => params[:user_id])
    @user_id = params[:user_id]
    redirect_to "/users/#{@user_id}/videos/#{@video.id}"
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
