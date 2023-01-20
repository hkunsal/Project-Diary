# {{Task Tracker}} Class Design Recipe

## 1. Describe the Problem

> As a user  
> So that I can keep track of my tasks  
> I want a program that I can add todo tasks to and see a list of them.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
class TaskTracker
  def initialize
    @list = []
  end

  def add(todo)
    @list << todo
  end

  def complete(todo)
    if @list.include?(todo)
      @list.delete(todo)
    else
      fail "No such todo."
    end
  end

  def list
    return @list
  end  
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
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
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
