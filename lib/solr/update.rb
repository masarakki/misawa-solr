#!/usr/bin/env ruby

require 'open-uri'
require 'json'

module Misawa::Solr
  module Update
    MISAWA_JSON = "http://cloud.github.com/downloads/june29/horesase-boys/meigens.json"

    def update
      client.add JSON.parse(open(MISAWA_JSON).read), :params => {:commit => true}
    end
  end
end
