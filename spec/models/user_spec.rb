require 'rails_helper'

RSpec.describe User, type: :model do
  
  # Core user username validation test cases
  context "username is not valid unless" do
    it "it is present" do
      should validate_presence_of(:username).on(:create)
    end
    it "it is unique" do 
      should validate_uniqueness_of(:username)
    end
    it "it containes no special characters" do 
      should_not allow_values('alex.mckean', '@lexMcKean').for(:username)
    end
    it "it containes no spaces" do 
      should_not allow_values('alex mckean').for(:username)
    end
    it "it containes only letters and numbers" do
      should allow_values('ajmckean', 'Ajmckean', 'ajmckean5').for(:username) 
    end
    it "it is a maximum of 32 characters" do
      should validate_length_of(:username).is_at_most(32)
    end
  end
  
  # Core user password validation test cases
  context "password is not valid unlesss" do 
    it "it is present" do 
      should validate_presence_of(:password).on(:create)
    end
    it "it is secure" do
      should have_secure_password 
    end
  end

  # Core user association test cases
  context "associations are not valid unless" do 
    it "one user containes many articles" do 
      should have_many(:articles)
    end
  end
end
