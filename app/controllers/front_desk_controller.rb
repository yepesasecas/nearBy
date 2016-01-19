class FrontDeskController < ApplicationController
  def create
    space = Space.find_by_beacon(front_desk_params[:beacon].to_h)

    if space.empty?
      render json: {message:"not found"}, status: :unprocessable_entity
    else
      @frontDesk = FrontDesk.new(
        space: space.first,
        user: User.new(front_desk_params[:user]))
      # testing CodeShip
      @frontDesk.handle_request
      render json: @frontDesk
    end
  end

  private
    def front_desk_params
      params.require(:request).permit([beacon:[:uuid, :minor, :major], user:[:id]])
    end
end
