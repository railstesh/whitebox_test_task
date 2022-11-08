require 'rails_helper'
RSpec.describe Project, type: :model do
  it "title should be present " do
    @project = Project.new
    @project.title = nil
    expect(@project).to_not be_valid
  end

  it "description should be present " do
    @project = Project.new
    @project.description = nil
    expect(@project).to_not be_valid
  end

  it "start_date should be present " do
    @project = Project.new
    @project.start_date= nil
    expect(@project).to_not be_valid
  end

  it "end_date should be present " do
    @project = Project.new
    @project.end_date= nil
    expect(@project).to_not be_valid
  end
end
