require 'sinatra/base'
require 'slim'
require 'sass'
require 'coffee-script'
require 'json'
require 'yaml'
require 'open-uri'

module Rubydaily
  class UI < Sinatra::Base

    # @macro [attach] sinatra.set
    #   @overload set "$1", value
    # @method set_root
    # @param [String] path path to root directory
    # Set root app directory
    set :root, File.expand_path('../../../',__FILE__)

    # @method set_public
    # @param [String] path set directory for public folder
    # Set public folder for static files
    set :public_folder, "#{settings.root}/static"

    # @method set_sessions
    # @param [Boolean] sessions set sessions options
    # Turn on sessions
    set :sessions, true

    # @method set_logger
    # @param [Boolean] logging show log
    # Turn on logging and set log level to dedug for development environment
    set :logging, false

    configure :development do
      set :logging, true
    end

    configure do

    end

    before do

    end

    get '/' do
      slim :index
    end

    get '/about' do
      slim :about
    end

    get '/sitemap.xml' do
     redirect "http://stream.rubydaily.org/sitemap1.xml"
    end

    # @method get_coffee
    # Render coffeescripts
    get "/scripts.js" do
      coffee :scripts
    end

    # @method get_sass
    # Render SASS styles
    get "/styles.css" do
      sass :styles
    end
  end
end
