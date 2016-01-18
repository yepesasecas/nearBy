class FrontDesk
  attr_reader :beacon, :user

  def initialize(args)
    @beacon = args[:beacon]
    @user = args[:user]
  end

  def handle_request
    beacon.space.actions.each do |action|
      p action.url
    end
  end
end
