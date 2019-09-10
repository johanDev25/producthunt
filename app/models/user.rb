class User < ApplicationRecord
	has_secure_password
	has_secure_password validation: false
end
