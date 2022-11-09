require 'rails_helper'
RSpec.describe Project, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_presence_of(:start_date) }
    it { is_expected.to validate_presence_of(:end_date) }
  end

  describe 'Association' do
    it { should have_many(:tickets)}
    it { should belong_to(:user)}
  end

  describe 'Enum' do
    it { should define_enum_for(:status).with([:working, :completed]) }
  end
end
