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

require 'test_helper'

class LinkTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
