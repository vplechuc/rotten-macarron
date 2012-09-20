require 'rubygems'
require 'sequel'
require File.join(File.dirname(__FILE__), '../db/db')

class Movie < Sequel::Model
  attr_accessor :title, :rating, :release, :description
end