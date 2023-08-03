class CustomerSubSerializer
  include JSONAPI::Serializer
  attributes :id, :customer_id, :subscription_id

  attribute :customer do |object|
    object.customer
  end

  attribute :subscription do |object|
    object.subscription
  end

  attribute :tea do |object|
    object.subscription.teas
  end
end