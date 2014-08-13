# == Schema Information
#
# Table name: cards
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  short_desc  :string(255)
#  long_desc   :text
#  category    :string(255)
#  readiness   :decimal(, )
#  photo       :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  approved    :boolean
#  category_id :integer
#  slug        :string(255)
#

require 'test_helper'

class CardTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
