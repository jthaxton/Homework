# == Schema Information
#
# Table name: houses
#
#  id         :bigint(8)        not null, primary key
#  house      :string           not null
#  address    :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class HouseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
