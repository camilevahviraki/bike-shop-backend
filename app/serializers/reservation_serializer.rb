class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :total_price, :start_date, :end_date, :city, :booking_fee, :motorcycle_id
end
