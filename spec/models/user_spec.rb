require 'rails_helper'

describe User, type: :model do
  describe '#full_name' do
    context 'with a first and last name present' do
      subject { FactoryBot.build(:user, first_name: "John", last_name: "Doe") }

      it 'concatenates the first and last name' do
        expect(subject.full_name).to eql "John Doe"
      end
    end
  end
end
