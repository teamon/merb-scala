class Application < Merb::Controller
  def index
    user = ScalaModels::User.new
    user.say
  end
end