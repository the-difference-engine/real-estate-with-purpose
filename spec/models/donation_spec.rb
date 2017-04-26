require 'rails_helper'

describe Donation do
  context 'associations' do
    it { should belong_to(:charity) }
  end


end
