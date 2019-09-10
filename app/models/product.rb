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
#

class Product < ApplicationRecord
end
