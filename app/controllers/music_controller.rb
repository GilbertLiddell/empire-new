class MusicController < ApplicationController

  def index
    @song_headers = Song.all(:order => "id", :group => "decade")
    @songs = Song.all(:order => "sortorder")
  end
end