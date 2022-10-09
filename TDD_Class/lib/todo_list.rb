class TodoList
    def initialize
      @todo_list = []
    #  @todo_complete = []
    #  @todo_incomplete = []
    end
  
    def add(todo) 
      @todo_list << todo 
    end
  
    def incomplete
     return @todo_list.select { |task|  task.done? == false } 
      
    end
  
    def complete
       return @todo_list.select { |task|  task.done? == true }
    end
  
    def give_up!
      fail "No task exists to mark complete!" if @todo_list.empty?
      @todo_list.map {|task| task.mark_done!}
    end
  end
  
  