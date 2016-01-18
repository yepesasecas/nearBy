class FrontDesk
  attr_reader :space, :user

  def initialize(args)
    @space = args[:space]
    @user = args[:user]
  end

  def handle_request
    space.actions.each do |action|
      p action.url
    end
  end
end
