require_relative "./dnd_5e/version"
require_relative "./dnd_5e/cli"
require_relative "./dnd_5e/api"
require_relative "./dnd_5e/klass"


require 'pry'
require 'json'
require 'net/http'

module Dnd5e
  class Error < StandardError; end
  # Your code goes here...
end
