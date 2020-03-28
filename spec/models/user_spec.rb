require 'rails_helper'

RSpec.describe User, type: :model do
  #Core Username Test Cases
  it "is not valid without username" do
    should validate_preseence_of(:username)
  end
  it "is not valid without unique username" do 
    should validate_uniqueness_of(:username)
  end 
  it "is not valid if username contains special characters" do 
    should_not allow_value([/[!@#$%^&*(),.?":{}|<>]/]).for(:username).ignoring_interference_by_writer
  end
  it "is not valid if username contains spaces" do
    should_not allow_value([' ']).for(:username)
  end
  it "is not valid if username length is more than 32 characters" do
    should validate_length_of(:username).is_at_most(32)
  end

  #Password Test Cases
  it 'is not valid without password' do 
    should validate_preseence_of(:password)
  end
  it 'is not valid without password length greater than 5 characters' do 
    should ensure_length_of(:password).is_at_least(6)
  end
  it 'is not valid without password length less than 26 characters' do
    should ensure_length_of(:password).is_at_most(25)
  end
end
