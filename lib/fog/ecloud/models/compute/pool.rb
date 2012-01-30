module Fog
  module Compute
    class Ecloud
      class Pool < Fog::Ecloud::Model

        identity :href, :aliases => :Href

        ignore_attributes :xmlns, :xmlns_i

        attribute :name, :aliases => :Name
        attribute :id, :aliases => :Id
        attribute :state, :aliases => :State
        attribute :is_default, :aliases => :IsDefault
        attribute :storage_capacity, :aliases => :StorageCapacity
        attribute :compute_capacity, :aliases => :ComputeCapacity
        attribute :vapps, :aliases => :VApps

      end
    end
  end
end




