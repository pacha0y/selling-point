class Category < ActiveRecord::Base
    validates :name, presence: true, length: {minimum: 5, maximum: 30}
    validates :description, presence: true
end