require 'spec_helper'

describe ProjectLevel do
  it "Should create new ProjectLevel" do
    entry = ProjectLevel.create(:name => "New")
    entry.should be_valid
  end
end
