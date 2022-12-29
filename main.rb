# frozen_string_literal: true

require 'sinatra/base'

# main class
class MyApp < Sinatra::Base
  get '/' do
    'Hello world!'
  end
end
