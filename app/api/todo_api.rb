class TodoAPI < Grape::API
  format :json
  get "todo/:id" do
     todo = Todo.where(id:  params[:id]).first
     if todo
        todo.to_json
     end
   end
end
