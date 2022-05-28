require 'rails_helper'

RSpec.describe User, type: :model do
  context 'Validate' do
    describe 'presence of attributes' do
      it { should validate_presence_of(:name) }
      it { should validate_presence_of(:last_name) }
      it { should validate_presence_of(:doc_id) }
      it { should validate_presence_of(:genre) }
      it { should validate_presence_of(:status) }
    end

    describe 'enums setup' do
      it { should define_enum_for(:genre).with_values([:male, :female]) }
      it { should define_enum_for(:status).with_values([:active, :inactive]) }
    end

    describe 'Model relations' do
      it { should have_many(:loans) }
    end
  end
end
