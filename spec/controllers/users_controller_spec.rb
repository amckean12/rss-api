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


    #Tests to ensure user index action Functions correctly
    it "populates an array of users"
    it "renders the users json"

    #Test to ensure user show action functions correctly
    it "assigns the requested user tp @user"
    it "renders the user json"

    #Test to ensure user new action functions correctly
    context "with valid attributes" do 
        it "saves the new user to the database"
        it "redirects to the user json"
    end
    context "with invalid attributes" do 
        it "does not save the new user to the database"
    end
end
