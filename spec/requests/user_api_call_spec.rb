require 'rails_helper'

RSpec.describe 'API requests' do
    describe 'GET /users/1' do 
        @user = User.create('username': 'ajmckean', 'password': 'password')
        it 'returns a user_data object with id and username' do
            get(`/users/#{@user.id}`)
            json = JSON.parse(response.body)
            expect(json['user_data']).to contain_exactly({
                'id': 1,
                'username': 'ajmckean'
            })
        end 
    end
end