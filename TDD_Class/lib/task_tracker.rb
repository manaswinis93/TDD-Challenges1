class TaskTracker
    def initialize
         @task_list = []
    end
  
    def add_task(task)
      @task_list << task unless task.empty?
      return @task_list
    end
  
    def mark_complete(task)
        fail "No Such task exists!"  unless @task_list.include?(task)
         @task_list.delete(task)
        return @task_list
    end
  end