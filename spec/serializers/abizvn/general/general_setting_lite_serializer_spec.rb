require 'rails_helper'

RSpec.describe Abizvn::General::GeneralSettingLiteSerializer, type: :serializer do
  describe "serialization" do
    context 'order validations' do
      let! (:general_setting1) { FactoryBot.create(:general_setting) }
    
      it 'returns required attributes' do
        data = Abizvn::General::GeneralSettingLiteSerializer.new(general_setting1).serializable_hash
        validate_general_setting_lite_hash(general_setting1, data)
      end
    end
  end
end