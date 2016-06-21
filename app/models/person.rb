class Person < ActiveRecord::Base
  has_many :citizenships
  has_many :countries, through: :citizenships

  validates :phone_number, uniqueness: true
  validates :given_name, { scope: :surname }
  validates :surname, { scope: :given_name }
end
