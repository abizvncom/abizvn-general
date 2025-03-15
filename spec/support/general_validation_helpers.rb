module Abizvn
  module General
    module GeneralValidationHelpers
      def validate_general_setting_lite_hash(general_setting, serialized_data)
        expect(serialized_data).to have_key(:id)
        expect(serialized_data).to have_key(:type)
        expect(serialized_data).to have_key(:attributes)

        expect(serialized_data[:id]).to eq(general_setting.id.to_s)
        expect(serialized_data[:type]).to eq(:general_setting_lite)

        expect(serialized_data[:attributes]).to have_key(:id)
        expect(serialized_data[:attributes]).to have_key(:code)
        expect(serialized_data[:attributes]).to have_key(:value)
        expect(serialized_data[:attributes][:id]).to eq(general_setting.id)
        expect(serialized_data[:attributes][:code]).to eq(general_setting.code)
        expect(serialized_data[:attributes][:value]).to eq(general_setting.value)
      end
    end
  end
end