# APIのバージョン単位の設定
module V1
  class Root < Grape::API
    version 'v1'
    mount V1::Todos
  end
end
