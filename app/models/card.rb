class Card < ActiveRecord::Base
	mount_uploader :photo, PhotoUploader


def self.search(query)
	puts "searching..."
  where("name like ?", "%#{query}%") 
end

end
