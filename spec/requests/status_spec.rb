require 'rails_helper'

RSpec.describe 'Status requests' do
    describe 'GET /users' do
        it 'returns a status message' do 
            get('/users')
            json = JSON.parse(response.body)
            expect(json['status']).to eq('ok')
            expect(response.status).to eql(200)
        end
    end
end