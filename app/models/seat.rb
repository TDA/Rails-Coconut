class Seat < ActiveRecord::Base
  belongs_to :flight
  validate :baggage_in_limits

  def baggage_in_limits
    errors.add(:baggage, message: "cannot be greater than limit") if baggage > flight.baggage_allowance
  end
end
