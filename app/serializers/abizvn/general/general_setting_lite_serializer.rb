module Abizvn
  module General
    class GeneralSettingLiteSerializer
      include JSONAPI::Serializer
    
      attributes :id, :code, :value
    end
  end
end
