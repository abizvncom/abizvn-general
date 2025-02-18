class GeneralSetting < Commonbase::ApplicationRecord
  include Commonbase::RansackSearchable

  self.table_name = 'general_settings'

  validates :order, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  scope :ordered, -> { order(group: :asc, order: :asc) }
  scope :activated, -> { where(active: :true) }
end
