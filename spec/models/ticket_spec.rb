require 'rails_helper'

RSpec.describe Ticket, type: :model do
  @ticket = Ticket.new
  it "title should be present " do
    @ticket = Project.new
    @ticket.title = nil
    expect(@ticket).to_not be_valid
  end

  it "description should be present " do
    @ticket = Project.new
    @ticket.description = nil
    expect(@ticket).to_not be_valid
  end

  it "start_date should be present " do
    @ticket = Project.new
    @ticket.start_date= nil
    expect(@ticket).to_not be_valid
  end

  it "end_date should be present " do
    @ticket = Project.new
    @ticket.end_date= nil
    expect(@ticket).to_not be_valid
  end

end
