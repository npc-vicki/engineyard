require 'spec_helper'

describe "ey binary" do
  context "run without arguments" do
    it "prints usage information" do
      ey.should include "Tasks:"
    end
  end

  context "run with an argument that is not a command" do
    it "tells the user that is not a command" do
      ey("foobarbaz", :err => true)
      @err.should include "Could not find task"
    end
  end
end