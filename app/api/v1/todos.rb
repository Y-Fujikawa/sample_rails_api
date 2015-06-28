module V1
  class Todos < Grape::API
    resource :todos do

      desc "TODO一覧取得"
      get '', jbuilder: 'todos/index' do
        @todos = Todo.all
      end

      desc "TODO登録"
      params do
        requires :title, type: String, desc: 'TODOタイトル'
      end
      post '' do
        Todo.create(title: params[:title])
        status 201
      end
    end
  end
end
