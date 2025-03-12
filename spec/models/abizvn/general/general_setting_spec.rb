require 'rails_helper'

RSpec.describe Abizvn::General::GeneralSetting, type: :model do
  describe "validations" do
    context 'group validations' do
      it { should validate_presence_of(:group) }
    end

    context 'code validations' do
      it { should validate_presence_of(:code) }
    end

    context 'value validations' do
      it { should validate_presence_of(:value) }
    end

    context 'order validations' do
      it 'validates numericality of order' do
        should validate_numericality_of(:order)
          .only_integer
          .is_greater_than_or_equal_to(0)
      end
    end
  end

  describe "uniqueness validations" do
    context 'group and code validations' do
      let! (:general_setting1) { FactoryBot.create(:general_setting) }

      it 'group and code should be unique' do
        new_setting = FactoryBot.build(:general_setting, group: general_setting1.group, code: general_setting1.code)
        expect(new_setting).to be_invalid
        expect(new_setting.errors[:code]).to include("with code must be unique")
      end
    end

    context 'group and code validations' do
      let! (:general_setting1) { FactoryBot.create(:general_setting) }

      it 'group and value should be unique' do
        new_setting = FactoryBot.build(:general_setting, group: general_setting1.group, value: general_setting1.value)
        expect(new_setting).to be_invalid
        expect(new_setting.errors[:value]).to include("with value must be unique")
      end
    end
  end
end