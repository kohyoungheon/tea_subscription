class Customer < ApplicationRecord
  has_many :customer_subs, dependent: :destroy
  has_many :subscriptions, through: :customer_subs

  validates_presence_of :first_name, :last_name, :email, :address
end
