require 'rails_helper'

RSpec.describe Donation, type: :model do
  it { is_expected.to belong_to(:charity) }
end
