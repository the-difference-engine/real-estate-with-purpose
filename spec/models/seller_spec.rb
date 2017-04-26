require 'rails_helper'

describe Seller do
  context 'validations' do
    it { is_expected.to validate_presence_of(:name) }
  end
end
