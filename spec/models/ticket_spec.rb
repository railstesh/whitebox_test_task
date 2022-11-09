require 'rails_helper'
RSpec.describe Ticket, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_presence_of(:start_date) }
    it { is_expected.to validate_presence_of(:end_date) }
  end

  describe 'Association' do
    it { should belong_to(:project)}
  end

  describe 'Enum' do
    it { should define_enum_for(:status).with([:intial_stage, :working, :completed])}
    it { should define_enum_for(:priority).with([:low, :medium, :high])}
  end
end
