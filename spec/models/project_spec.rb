require 'spec_helper'

describe Project do
  it "Should create project" do
    entry = Project.new
    entry.should be_valid
  end
end
