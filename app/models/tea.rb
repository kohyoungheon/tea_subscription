class Tea < ApplicationRecord
  has_many :tea_subs, dependent: :destroy
  has_many :subscriptions, through: :tea_subs

  validates_presence_of :title, :description, :temperature, :brew_time
end
