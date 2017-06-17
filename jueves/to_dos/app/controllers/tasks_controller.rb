#Controlador
class TasksController
  def initialize(args)
    @view = TasksView.new
    #index
    @args = args
    options
  end

  def options
    if @args[0] == "add"
      add
    elsif @args[0] == "delete"
      delete
    elsif @args[0] == "complete"
      complete
    end
  end

  def index#(option)
    # TIP: Aquí debes de llamar al método del mismo nombre de @view
    #p Task.all
    @view.index(Task.all)
  end

  def add
    new_task = @args[1]
    Task.create(task: "#{new_task}", status: false, assigned: "single")
    @view.create
    index
  end

  def delete
    new_delete = @view.delete
    Task.destroy(new_delete)
    index
  end

  def complete
    index
    task_completed = @view.completed
    task_completed = task_completed.to_i
    Task.update(task_completed, status: true)
    @view.update
    index
  end
end





