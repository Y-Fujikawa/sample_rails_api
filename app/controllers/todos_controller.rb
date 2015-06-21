class TodosController < ApplicationController
  def show
    todo = Todo.where(id: params[:id]).first
    if todo
      json = todo.to_json
    end
    render text: json
  end
end
