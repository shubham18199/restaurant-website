class Reservation < ApplicationRecord

    validates :name, presence: true
    validates :email, presence: true
    validates :phone, presence: true
    validates :seats, presence: true
    validates :date, presence: true
    validates :time, presence: true
end
