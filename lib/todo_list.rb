class TodoList
  def initialize
    @todos = []
  end

  def add(todo) # todo is an instance of Todo
    @todos << todo
  end

  def to_s 
    @todos.map(&:task).join(", ")
  end

  def incomplete
    @todos.select { |todo| !todo.done? }
  end

  def complete
    @todos.select { |todo| todo.done? }
  end

  def give_up!
    @todos.each { |todo| todo.mark_done! }
  end
end