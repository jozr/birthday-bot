require 'sinatra/base'

module BirthdayBot
  class Web < Sinatra::Base
    get '/' do
      'test'
    end
  end
end