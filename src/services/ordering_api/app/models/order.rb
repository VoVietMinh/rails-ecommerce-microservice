class Order < ApplicationRecord
    scope :user_name, ->(user_name) { where('user_name like ?', user_name) }
end
