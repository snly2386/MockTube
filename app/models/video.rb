class Video < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  def self.search(search)
    if search != ""
      @videos = Video.where('title LIKE ?', "%#{search}%")
    else
      @videos = Video.all
    end
  end
end
