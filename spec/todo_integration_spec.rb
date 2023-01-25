require "todo"
require "todo_list"

RSpec.describe "todo_integration" do
  context "after adding tasks" do
    it "lists one task" do  
      todo = Todo.new("wash the dishes")
      todo_list = TodoList.new
      todo_list.add(todo)
      expect(todo.task).to eq "wash the dishes"
    end

    it "lists two tasks" do
      todo = Todo.new("wash the dishes")
      todo_2 = Todo.new("walk the dog")
      todo_list = TodoList.new
      todo_list.add(todo)
      todo_list.add(todo_2)
      expect(todo_list.to_s).to eq "wash the dishes, walk the dog"
    end
  end

  context "marking todos done" do
    it "marks one todo done" do
      todo = Todo.new("wash the dishes")
      todo_2 = Todo.new("walk the dog")
      todo_list = TodoList.new
      todo_list.add(todo)
      todo_list.add(todo_2)
      todo.mark_done!
      expect(todo_list.incomplete.size).to eq(1)
    end

    it "marks all todos done" do
      todo = Todo.new("wash the dishes")
      todo_2 = Todo.new("walk the dog")
      todo_list = TodoList.new
      todo_list.add(todo)
      todo_list.add(todo_2)
      todo_list.give_up!
      expect(todo_list.complete.size).to eq(2)
    end
  end

  context "checking done status" do
    it "returns true for done todo" do
      todo = Todo.new("wash the dishes")
      todo.mark_done!
      expect(todo.done?).to be true
    end

    it "returns false for incomplete todo" do
      todo = Todo.new("wash the dishes")
      expect(todo.done?).to be false
    end
  end
end