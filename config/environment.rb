# frozen_string_literal: true

ENV['SINATRA_ENV'] ||= 'development'

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

require './lib/git_explorer'
Dir.glob(File.join('.', 'app', '**', '*.rb'), &method(:require))
