# == Schema Information
#
# Table name: links
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  url        :string(255)
#  created_at :datetime
#  updated_at :datetime
#  card_id    :integer
#  link_type  :string(255)
#

class Link < ActiveRecord::Base
	belongs_to :card

	validates_presence_of :name
	validates_presence_of :url
	validates_presence_of :link_type

end
