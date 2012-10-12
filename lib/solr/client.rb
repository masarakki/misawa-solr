require 'rsolr'

module Misawa::Solr
  class Client
    attr_accessor :client
    def initialize
      @client = RSolr.connect :url => 'http://misawa-solr.np-complete-doj.in:8983/solr/misawa'
    end

    include Update
  end
end
