class Passenger < ActiveRecord::Base
  has_many :suitcases

  # def suitcases
  #   Suitcase.where(passenger_id: some_passenger_object.id )
  # end

  # some_passenger_object.suitcases
  # returns an array or suitcase objects that belong to a passenger
end
