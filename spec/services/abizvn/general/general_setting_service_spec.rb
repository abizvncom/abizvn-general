require 'rails_helper'

RSpec.describe Abizvn::General::GeneralSettingService, type: :service do
  describe "find_by_group" do
    context 'returns active groups' do
      let! (:general_setting1) { FactoryBot.create(:general_setting) }
      let! (:general_setting2) { FactoryBot.create(:general_setting, active: false) }
      let! (:general_setting3) { FactoryBot.create(:general_setting) }
    
      it 'returns required attributes' do
        data = Abizvn::General::GeneralSettingService.find_by_group(general_setting1.group)
        expect(data.first).to eq(general_setting1)
        expect(data.last).to eq(general_setting3)
        expect(data).not_to include(general_setting2)
      end
    end
  end
end