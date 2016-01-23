require "net/http"
require 'net/https'
require "uri"

class PostCallbackUrlJob < ApplicationJob
  queue_as :default

  def perform(action_id)
    sleep(5)
    action = Action.find(action_id)
    if action
      p action.url
    end
  end
end
