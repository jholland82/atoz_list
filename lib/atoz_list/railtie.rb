require 'rails'
require 'atoz_list'
module AtozList
  class Railtie < Rails::Railtie
    config.to_prepare do
      ApplicationController.send(:extend AtozList::Hook)
    end
  end
end
