class Todo
    def initialize(task) # task is a string
     @task = task
     @mark_done = []

    end
  
    def task
      fail "Task is empty!" if @task.empty?
      return @task 
    end
  
    def mark_done!
      fail "Task is empty!" if @task.empty?
      @mark_done << @task

      
    end
  
    def done?
      fail "Task is empty!" if @task.empty?
      if @mark_done.include?(@task) 
        return true
      else 
        return false
      end
    end
  end