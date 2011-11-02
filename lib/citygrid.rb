# Citygrid
require 'rubygems'
gem 'httparty'
require 'httparty'
require 'hashie'

directory = File.expand_path(File.dirname(__FILE__))

Hash.send :include, Hashie::HashExtensions

module Citygrid
  
  # create config/initializers/citygrid.rb
  # 
  # Citygrid.configure do |config|
  #   config.publisher = 'publisher code'
  # end
  # client = Citygrid::Client.new
  #
  # or
  #
  # Citygrid.publisher = 'publisher code'
  #
  # or
  #
  # Citygrid::Client.new(:publisher => 'publisher code')
  
  def self.configure
    yield self
    true
  end

  class << self
    attr_accessor :publisher
  end
  
end

require File.join(directory, 'citygrid', 'client')
