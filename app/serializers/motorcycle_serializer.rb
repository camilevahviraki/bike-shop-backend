class MotorcycleSerializer < ActiveModel::Serializer
  attributes :id, :brand, :model, :year, :description, :booking_fee, :reserved, :image_url, :user_id, :booking_fee

  def image_url
    object.image.attachment.url
  end
end
