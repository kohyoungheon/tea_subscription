require 'rails_helper'

RSpec.describe Subscription, type: :model do
  describe 'relationships' do
    it { should have_many(:tea_subs) }
    it { should have_many(:teas).through(:tea_subs) }
  end

  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:price) }
    it { should validate_presence_of(:status) }
    it { should validate_presence_of(:frequency) }
  end

  describe 'enums' do
    it { should define_enum_for(:status).with_values([:in_progress, :shipped, :completed, :cancelled]) }
    it { should define_enum_for(:frequency).with_values([:monthly, :biweekly, :weekly]) }
  end
end
