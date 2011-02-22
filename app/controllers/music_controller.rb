class MusicController < ApplicationController

  def index
    @song_headers = Song.all(:group => "decade")
    @songs = Song.all(:order => "sortorder")
  end
end