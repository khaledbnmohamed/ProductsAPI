require 'rails_helper'

RSpec.describe ProductsController, type: :controller do
    context 'GET #index' do
        it 'returns a success respomse' do
            get :index
            expect(response).to be_success
        end
    end
end
