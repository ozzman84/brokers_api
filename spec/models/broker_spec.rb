require 'rails_helper'

RSpec.describe Broker, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:operating_state) }
    it { should validate_length_of(:operating_state).is_equal_to(2) }
  end
end
