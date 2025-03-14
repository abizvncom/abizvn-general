module Abizvn
  module General
    module GeneralValidationHelpers
      def validate_general_setting_lite_hash(general_setting, serializable_hash)
        expect(serializable_hash).to have_key(:data)
        expect(serializable_hash[:data]).to have_key(:id)
        expect(serializable_hash[:data]).to have_key(:type)
        expect(serializable_hash[:data]).to have_key(:attributes)
        expect(serializable_hash[:data][:attributes]).to have_key(:id)
        expect(serializable_hash[:data][:attributes]).to have_key(:code)
        expect(serializable_hash[:data][:attributes]).to have_key(:value)

        expect(serializable_hash[:data][:id]).to eq(general_setting.id.to_s)
        expect(serializable_hash[:data][:type]).to eq(:general_setting_lite)
        expect(serializable_hash[:data][:attributes][:id]).to eq(general_setting.id)
        expect(serializable_hash[:data][:attributes][:code]).to eq(general_setting.code)
        expect(serializable_hash[:data][:attributes][:value]).to eq(general_setting.value)
      end
    end
  end
end