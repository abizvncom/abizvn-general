module Abizvn
  module General
    class GeneralSetting < ApplicationRecord
      include Commonbase::RansackSearchable
    
      self.table_name = 'general_settings'
    
      validates :order, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

      validates :group, :code, :value, presence: true
      validates :code, uniqueness: { scope: :group, case_insensitive: true, message: 'with code must be unique' }
      validates :value, uniqueness: { scope: :group, case_insensitive: true, message: 'with value must be unique' }
    
      scope :ordered, -> { order(group: :asc, order: :asc) }
      scope :activated, -> { where(active: :true) }
    end
  end
end
