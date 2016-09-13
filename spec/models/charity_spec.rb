require 'rails_helper'

RSpec.describe Charity, type: :model do
    it { is_expected.to have_many(:donations) }
end
