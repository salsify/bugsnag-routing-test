class WebhookController < ApplicationController

  def incoming
    render status: 204, json: {}
  end

end
