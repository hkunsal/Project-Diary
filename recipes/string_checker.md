# {{String Checker}} Method Design Recipe

## 1. Describe the Problem

> As a user  
> So that I can keep track of my tasks  
> I want to check if a text includes the string `#TODO`.

## 2. Design the Method Signature

string_checker method takes a string as a parameter and returns true if the given string includes #TODO.

```ruby
def string_checker(str)
  if str.include?("#TODO")
    true
  end
end
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
require 'string_checker'

RSpec.describe do
  it "checks the string and returns true if the string includes #TODO" do
    expect(string_checker("Today's #TODO is to wash the dishes.")).to eq true
  end
end

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._