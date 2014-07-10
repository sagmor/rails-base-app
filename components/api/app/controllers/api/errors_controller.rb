module API
  class ErrorsController < API::ApplicationController
    def show
      render json: {
        error: (params[:error_message] || "Unknown error")
      }, status: (params[:error_status] || :bad_request)
    end
  end
end

