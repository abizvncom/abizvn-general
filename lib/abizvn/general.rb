# frozen_string_literal: true
require "abizvn/general/version"
require "abizvn/general/engine"
require "commonbase"

module Abizvn
  module General
    ENTITY_STATUS_GROUP_NAME = 'entity_status'

    ENTITY_STATUS_CODE_DRAFT = 'draft'
    ENTITY_STATUS_CODE_PUBLIC = 'public'
    ENTITY_STATUS_CODE_INVISIBLE = 'invisible'
    ENTITY_STATUS_CODE_PRIVATE = 'private'
  end
end
