class User
  attr_reader :id
  def initialize(args)
    @id = args[:id]
  end
end
