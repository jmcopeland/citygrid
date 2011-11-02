module Citygrid
  
  class Client
    include HTTParty
    base_uri "http://api.citygridmedia.com/content/"
    format :json
    
    attr_reader :publisher
                
    def initialize(options={})
      @publisher = options[:publisher] || Citygrid.publisher
    end
    
    #    http://docs.citygridmedia.com/display/citygridv2/Places+API
    def search(options={})
      mashup(self.class.get("places/v2/search/where", :query => options.merge(self.default_options)))
    end

    def search_by_latlon(options={})
      mashup(self.class.get("places/v2/search/latlon", :query => options.merge(self.default_options)))
    end

    def detail(options={})
      mashup(self.class.get("places/v2/detail", :query => options.merge(self.default_options)))
    end
        
    #    http://docs.citygridmedia.com/display/citygridv2/Reviews+API
    def reviews(options={})
      mashup(self.class.get("reviews/v2/search/where/", :query => options.merge(self.default_options)))
    end
    
    protected
    
    def default_options
      {:publisher => @publisher, :format => 'json'}
    end
    
    def mashup(response)
      puts response.inspect
      case response.code
      when 200
        if response.is_a?(Hash)
          Hashie::Mash.new(response)
        else
         if response.first.is_a?(Hash)
           response.map{|item| Hashie::Mash.new(item)}
         else
           response
         end
        end
      end
    end
  end
    
end
