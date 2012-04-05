#!/usr/bin/env ruby

require 'rubygems'
require 'fairytale'
require './helpers'
require './models'

# Assets
get('/assets/css/master.css', nil) {
  scss :master, engine_options: { :style => :compressed }
}

# Home
get '/' do
  @article = Article.new(:index)
  erb :article
end

# Errors
get '/404/' do
  @article = Article.new(:"404")
  erb :article
end