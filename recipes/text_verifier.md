# {{Text Verifier}} Method Design Recipe

## 1. Describe the Problem

> As a user  
> So that I can improve my grammar  
> I want to verify that a text starts with a capital letter and ends with a
> suitable sentence-ending punctuation mark.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
# EXAMPLE

# text_verifier verifies if the string begins with a capital letter and ends with a suitable punctuation mark.
def text_verifier(str)
  r1 = /\A[A-Z]/
  r2 = /\z[?!.]/
  r3 = Regexp.new(r1.source + r2.source)
  if str.match?(r3) != nil
    true
  end
end

# It returns true if the string meets the criteria
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
# EXAMPLE
require 'text_verifier'

RSpec.describe do
  it "returns true" do
    expect(text_verifier("Hello, my name is Hande.")).to eq true
  end
end
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
