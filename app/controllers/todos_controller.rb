class TodosController < ApplicationController

  before_filter :authenticate

  def index
    @todos = current_user.todos
  end

  def new
    @todos = Todo.new
  end

  def create
    current_user.todos.create(todo_params)
    # Todo.create(todo_params.merge(email: current_email))
    redirect_to todos_path
  end

  private
  def todo_params
    params.require(:todo).permit(:title)
  end
end