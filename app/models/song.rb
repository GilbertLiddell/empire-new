class Song < ActiveRecord::Base
  attr_accessible :title, :artist, :decade
end
