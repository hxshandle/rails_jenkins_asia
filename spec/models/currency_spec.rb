require 'spec_helper'

describe Currency do
  it "Should create Currency" do
    entry = Currency.create!(:name => "RMB")
    entry.should be_valid
  end
end
