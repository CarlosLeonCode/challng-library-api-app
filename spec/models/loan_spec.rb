require 'rails_helper'

RSpec.describe Loan, type: :model do
  context 'Validate' do
    describe 'presence of attributes' do
      it { should validate_presence_of(:status) }
    end

    describe 'enums setup' do
      it { should define_enum_for(:status).with_values([:pending_deliver, :delivered]) }
    end

    describe 'Model relations' do
      it { should have_belong_to(:user) }
      it { should have_belong_to(:book) }
    end
  end
end
