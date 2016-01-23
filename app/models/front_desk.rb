class FrontDesk
  attr_reader :space, :user

  def initialize(args)
    @space = args[:space]
    @user = args[:user]
  end

  def handle_request
    1000.times do
      space.actions.each do |action|
        PostCallbackUrlJob.perform_later action.id
      end
    end
  end
end
