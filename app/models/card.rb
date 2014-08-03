class Card < ActiveRecord::Base
	mount_uploader :photo, PhotoUploader
	validates :name, presence: true
	validates :short_desc, presence: true

	has_paper_trail

	has_many :links, :dependent => :destroy


	has_many :categories
	accepts_nested_attributes_for :categories

	

def self.search(query)
	puts "searching..."
  where("name like ?", "%#{query}%") 
end

end
