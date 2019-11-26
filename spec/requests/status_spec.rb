
require 'rails_helper'

RSpec.describe 'unauthorized requests' do
    describe 'GET /products' do
        it 'redirects to login if no login ' do
        get('/products')
        expect(response).to redirect_to('/login')
        end
    end

    describe 'GET /products' do
        it 'redirects to login if no login ' do
        get('/products')
        expect(response).to redirect_to('/login')
        end
    end
end
