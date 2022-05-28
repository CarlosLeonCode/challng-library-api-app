require 'rails_helper'

RSpec.describe Book, type: :model do
  context 'Validate' do
    describe 'presence of attributes' do
      it { should validate_presence_of(:code) }
      it { should validate_presence_of(:name) }
      it { should validate_presence_of(:genre) }
      it { should validate_presence_of(:author) }
      it { should validate_presence_of(:status) }
    end

    describe 'enums setup' do
      it { should define_enum_for(:status).with_values([:available, :borrowed, :unavailable]) }
    end

    describe 'Model relations' do
      it { should have_many(:loans) }
    end
  end
end
