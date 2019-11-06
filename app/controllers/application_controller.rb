class ApplicationController < ActionController::API
    include ActionController::MimeResponds
    respond_to :json


    def send_error(status=:internal_server_error)
        render json: {}, status: status
    end
end
