require 'rails_helper'

RSpec.describe Abizvn::General::GeneralSettingLiteSerializer, type: :serializer do
  describe "serialization" do
    context 'order validations' do
      let (:general_setting1) { FactoryBot.create(:general_setting) }
      let (:serializer) { described_class.new(general_setting1) }
    
      it 'returns required attributes' do
        data = serializer.serializable_hash[:data]
        validate_general_setting_lite_hash(general_setting1, data)
      end
    end
  end
end