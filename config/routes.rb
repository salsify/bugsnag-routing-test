Rails.application.routes.draw do

  post 'incoming/*all' => 'webhook#incoming'

end
