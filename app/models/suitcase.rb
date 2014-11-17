class Suitcase < ActiveRecord::Base
  belongs_to :passenger

  # def passenger

  #   my_passengers_id = Suitcase.passenger_id
  #   Passenger.find(my_passengers_id)

  #     OR THIS

  #   Passenger.find(Suitcase.passenger_id)
  # end

  # some_suitcase_object.passenger
  # returns the passenger who owns some_suitcase_object
end
