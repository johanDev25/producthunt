# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string(50)
#  url         :string(50)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
