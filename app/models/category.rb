class Category < ActiveRecord::Base
	  belongs_to :cards
	  translates :name, :versioning => :paper_trail
end
