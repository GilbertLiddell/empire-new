class MusicController < ApplicationController

  def index
    @song_headers = Song.find( :all, :select => 'DISTINCT decade' )
    @songs = Song.all(:order => "sortorder")
  end
end