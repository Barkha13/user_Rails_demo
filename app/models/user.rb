class User < ActiveRecord::Base
    validates :first_name, :last_name, presence: true, length: { in: 2..20 }
    validates :age, presence: true, numericality: { only_integer: true }
    validates :age, numericality: { greater_than_or_equal_to: 10 }, numericality: { less_than_or_equal_to: 150}
    validates :email_address, presence: true
end

