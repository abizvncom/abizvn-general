# frozen_string_literal: true
require "abizvn/general/version"
require "abizvn/general/engine"
require "commonbase"  # To load the common base gem

module Abizvn
  module General
    ENTITY_STATUS_GROUP_NAME = 'entity_status'

    ENTITY_STATUS_CODE_DRAFT = 'draft'
    ENTITY_STATUS_CODE_PUBLIC = 'public'
    ENTITY_STATUS_CODE_INVISIBLE = 'invisible'
    ENTITY_STATUS_CODE_PRIVATE = 'private'

    def self.entity_status_collection
      return get_collection_by_group(ENTITY_STATUS_GROUP_NAME)
    end

    def self.get_collection_by_group(group)
      return Abizvn::General::GeneralSetting.where(group: group).activated.ordered.pluck(:value, :id)
    end
  end
end
