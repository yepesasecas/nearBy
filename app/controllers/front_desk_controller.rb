class FrontDeskController < ApplicationController
  def create
    @frontDesk = FrontDesk.new(
      beacon: Beacon.find_by(front_desk_params[:beacon]),
      user: User.new(front_desk_params[:user]))

    @frontDesk.handle_request
  end

  private
    def front_desk_params
      params.require(:request).permit([beacon:[:uuid, :minor, :major], user:[:id]])
    end
end
