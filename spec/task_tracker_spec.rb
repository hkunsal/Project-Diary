require "task_tracker"

RSpec.describe TaskTracker do
  it "adds todos to the list" do
    test = TaskTracker.new("wash the dishes")
    expect(test.add("wash the dishes")).to eq ["wash the dishes"]
  end
end