class Category < ActiveRecord::Base
	  belongs_to :cards
	  translates :name
end
