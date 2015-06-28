json.todos do |json|
  json.array!(@todos) do |todo|
    json.id todo.id
    json.title todo.title
  end
end
