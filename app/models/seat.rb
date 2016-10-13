class Seat < ActiveRecord::Base
  def validate
    if (name == flight_id)
      errors.add_to_base("Your name is the same as the flight number")
    end
  end
end
