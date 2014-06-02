class VideosController < ApplicationController
  def create
    @video = Video.create(:title => params[:title], :youtube_id => params[:youtube_id], :description => params[:description])
    @user_id = params[:user_id]
    redirect_to "/users/#{@user_id}/videos/#{@video.id}"
  end

  def show
    @video = Video.find(params[:id])
  end

  def index

  end
end
