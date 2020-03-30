require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do
    #Tests to ensure correct routing for User
    it "should route => GET: articles to the articles controller, index action" do 
        expect(GET: "/articles").to route_to(controller: 'articles', action: 'index') 
    end
end
