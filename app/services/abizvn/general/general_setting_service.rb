module Abizvn
  module General
    class GeneralSettingService
      class << self
        def find_by_group(group)
          GeneralSetting.activated.where(group: group).ordered
        end
      end
    end
  end
end
