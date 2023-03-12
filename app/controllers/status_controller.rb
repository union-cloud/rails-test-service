class StatusController < ApplicationController
  def index
    if (200..299).include?(status_param)
      respond_to do |format|
        format.html
        format.json { render json: { status: status_param }.to_json }
      end
    else
      head status_param
    end
  end

  private

  def status_param
    params.fetch(:status, 200).to_i
  end

end
