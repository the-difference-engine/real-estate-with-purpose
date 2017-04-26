require 'rails_helper'

describe Realtor do 
  context 'validations' do
    it { is_expected.to validate_presence_of(:name) }
  end
  context 'create' do
    it "should have valid factory" do
      FactoryGirl.build(:realtor).should be_valid
    end
  end

end
