class TaskTracker
  def initialize(list)
    @list = []
  end

  def add(todo)
    @list << todo
    return @list
  end
end