  require 'rails_helper'

RSpec.describe BuyersController, type: :controller do
    it 'route get index' do
      expect(:get => 'buyers').to route_to(
        :controller => 'buyers',
        :action => 'index')
    end
end
