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

        desc "Return a card by id."
          params do
          requires :id, type: Integer, desc: "Card id."
        end
        route_param :id do
          get do
            Card.find(params[:id])
          end
        end

        desc "Update a cards small description."
        params do
          requires :id, type: Integer, desc: "Card ID."
          requires :short_desc, type: String, desc: "Small Description."
        end
        put ':id' do
          Card.find(params[:id]).update({
            short_desc: params[:short_desc]
          })
        end

      end

    end
  end
end