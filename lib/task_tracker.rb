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