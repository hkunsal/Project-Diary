require "task_tracker"

RSpec.describe TaskTracker do
  context "no tasks given" do
    it "returns the empty list" do
      todo_list = TaskTracker.new
      expect(todo_list.list).to eq []
    end
  end

  context "a task given" do
    it "adds todo to the list" do
      todo_list = TaskTracker.new
      todo_list.add("wash the dishes")
      expect(todo_list.list).to eq ["wash the dishes"]
    end
  end

  context "two tasks given" do
    it "adds 2 todos to the list" do
      todo_list = TaskTracker.new
      todo_list.add("wash the dishes")
      todo_list.add("pick up the dry cleaning")
      expect(todo_list.list).to eq ["wash the dishes", "pick up the dry cleaning"]
    end
  end

  context "when todo is in the list" do
    it "deletes the todo from the list" do
      todo_list = TaskTracker.new
      todo_list.add("wash the dishes")
      todo_list.add("pick up the dry cleaning")
      todo_list.complete("wash the dishes")
      expect(todo_list.list).to eq ["pick up the dry cleaning"]
    end
  end

  context "when todo is not in the list" do
    it "fails" do
      todo_list = TaskTracker.new
      expect { (todo_list.complete("cook the dinner")) }.to raise_error "No such todo."
    end
  end
end