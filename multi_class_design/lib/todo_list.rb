class TodoList
    def initialize
      @todo_list = []
    end

    def add(task)  
        @todo_list << task
    end

    def all
     return @todo_list
    end
end