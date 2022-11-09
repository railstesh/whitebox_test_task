require 'rails_helper'
RSpec.describe User, type: :model do
  describe 'Association' do
    it { should have_many(:projects) }
  end

  describe 'Enum' do
  	it {should define_enum_for(:role).with([:user, :admin])}
  end
end