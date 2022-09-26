class MotorcycleSerializer
  include JSONAPI::Serializer
  attributes :id, :brand, :model, :year, :description, :booking_fee, :reserved, :image_url
end
