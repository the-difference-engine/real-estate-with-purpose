require 'rails_helper'

describe Property do
  context 'associations' do
    it { should have_many(:user_properties)}
    it { should have_many(:users).through(:user_properties)}
  end


end