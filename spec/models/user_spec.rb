require 'rails_helper'

RSpec.describe User, type: :model do
  #Core Username Test Cases
  it "is not valid without username" do
    should validate_presence_of(:username)
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

  #Password Test Cases
  it 'is not valid without password' do 
    should validate_presence_of(:password)
  end
  it 'is not valid without password length greater than 5 characters' do 
    should ensure_length_of(:password).is_at_least(6)
  end
  it 'is not valid without password length less than 26 characters' do
    should ensure_length_of(:password).is_at_most(25)
  end
  it 'is not valid if password does not include special character' do
    should_not allow_values('ajmckean', 'ajmckean5', 'Ajmckean5').for(:password)
  end
  it 'is not valid if password includes spaces' do 
    should_not allow_values('alex mckean', '@lex McKean5', 'alexmckean 5').for(:password)
  end
  it 'is not valid if password doesnt include lower case' do 
    should_not allow_values('@LEXMCKEAN4').for(:password)
  end
  it 'is not valid if password does not include capital letter, special character, and number' do
    should allow_values('@lexMckean5').for(:password)
  end
end
