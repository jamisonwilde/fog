require 'fog/ecloud/models/compute/pool'

module Fog
  module Compute
    class Ecloud

      class Pools < Fog::Ecloud::Collection

        undef_method :create

        model Fog::Compute::Ecloud::Pool

        attribute :href, :aliases => :Href

        def all
          check_href! :message => "the compute pool href for the pool you want to enumerate"
          if data = connection.get_pools(href).body[:ComputePool]
            data = [ data ] if data.is_a?(Hash)
            load(data)
          end
        end

        def get(uri)
          if data = connection.get_network(uri)
            new(data.body)
          end
        rescue Fog::Errors::NotFound
          nil
        end

      end
    end
  end
end
