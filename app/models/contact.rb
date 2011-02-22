class Contact < ActiveRecord::Base
  attr_accessible :name, :emailaddress, :contactnumber, :message
end
