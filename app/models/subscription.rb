class Subscription < ApplicationRecord
  has_many :tea_subs, dependent: :destroy
  has_many :teas, through: :tea_subs

  validates_presence_of :title, :price, :status, :frequency

  enum status: [:in_progress, :shipped, :completed, :cancelled]
  enum frequency: [:monthly, :biweekly, :weekly]
end
