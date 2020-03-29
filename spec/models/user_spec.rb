require 'rails_helper'

RSpec.describe User, type: :model do
  #Core Username Test Cases
  it "is not valid without username" do
    should validate_presence_of(:username).on(:create)
  end
  it "is not valid without unique username" do 
    should validate_uniqueness_of(:username)
  end 
  it "is not valid if username contains special characters" do 
    should_not allow_values('alex.mckean', '@lexMcKean').for(:username)
  end
  it "is not valid if username contains spaces" do
    should_not allow_values('alex mckean').for(:username)
  end
  it "should allow username to only contain letters and numbers" do
    should allow_values('ajmckean', 'Ajmckean', 'ajmckean5').for(:username)
  end
  it "is not valid if username length is more than 32 characters" do
    should validate_length_of(:username).is_at_most(32)
  end

  #Core Password Test Cases
  it 'is not valid without password' do 
    should validate_presence_of(:password).on(:create)
  end
  it 'is not valid without a secure password' do
    should have_secure_password 
  end
end
