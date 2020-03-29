require 'rails_helper'

RSpec.describe UsersController, type: :controller do
    #Tests to ensure correct routing for User
    it "should route => GET: users/1 to the users controller,  show action, user id of 1" do
        expect(GET: "/users/1").to route_to(controller: 'users', action: 'show', id:'1') 
    end
    it "should route => PUT: users/1 to the users contorller, update action, user id of 1" do 
        expect(PUT: "/users/1").to route_to(controller: 'users', action: 'update', id:'1') 
    end
    it "should route => GET: users to the users controller, index action" do 
        expect(GET: "/users").to route_to(controller: 'users', action: 'index') 
    end
end
