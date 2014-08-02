class Card < ActiveRecord::Base
	mount_uploader :photo, PhotoUploader
	validates :name, presence: true
	validates :short_desc, presence: true

	has_paper_trail

def self.search(query)
	puts "searching..."
  where("name like ?", "%#{query}%") 
end

end
