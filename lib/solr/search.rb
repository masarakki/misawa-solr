module Misawa::Solr
  module Search
    def search(str, options = {})
      client.get '/select', :q => str
    end
  end
end
