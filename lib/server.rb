require 'sinatra/base'

module Misawa
  class Server < Sinatra::Base
    set :root, File.expand_path('../', File.dirname(__FILE__))

    def solr_client
      @solr_client ||= Misawa::Solr::Client.new
    end

    get '/' do
      haml :index
    end

    get '/search' do
      q = params[:q]
      solr_client.search(q)
    end

    put '/' do
      solr_client.update
    end
  end
end
