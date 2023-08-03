class SubscriptionSerializer
  include JSONAPI::Serializer
  attributes :id, :title, :price, :status, :frequency
  attribute :tea do |object|
    object.teas
  end
end