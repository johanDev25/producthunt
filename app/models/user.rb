# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string(100)
#  password_digest :string
#  name            :string(100)
#  twitter_handle  :string(50)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
    has_many :comments
    has_many :products


	validates :email, uniqueness: true, format: { with: /@/,
    message: "Debe contener un arroba" }
	validates :password_digest, presence: true, on: :create
	validates :password_digest, length: { in: 6..20 }, allow_nil: true
	validates :name, presence: true

	has_secure_password
	has_secure_password validation: false

end
