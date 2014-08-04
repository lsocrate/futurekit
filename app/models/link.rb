# == Schema Information
#
# Table name: links
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  url        :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Link < ActiveRecord::Base
	belongs_to :card

	validates_presence_of :name
	validates_presence_of :url
end
