class Todo
    def initialize(task)
      @task = task
    end

    def task
        fail "task is empty!" if @task.empty?
      return @task
    end
end
  