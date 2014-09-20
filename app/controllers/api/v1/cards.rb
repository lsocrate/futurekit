module API
  module V1
    class Cards < Grape::API
      # include API::V1::Defaults
      version 'v1' # path-based versioning by default
      format :json # We don't like xml anymore

      resource :cards do
        desc "Return list of cards"
        get do
          Card.all # obviously you never want to call #all here
        end
      end
    end
  end
end