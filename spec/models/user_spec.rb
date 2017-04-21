require 'rails_helper'

describe User do
  context 'associations' do
    it { should have_many(:user_properties) }
    it { should have_many(:properties).through(:user_properties) }
  end
end