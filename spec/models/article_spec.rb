require 'rails_helper'

RSpec.describe Article, type: :model do
  #Ensure presence of all necessary article attributes
  it "is not valid without a title"
  it "is not valid without an article link"
  it "is not valid without a published date"
  it "is not valid witout a description"
  it "is not valid without an image_present boolean"

  #Ensures each article attribute adhears to the formating rules
  context "is not valid unless title formatting of" do 
    it "is a string"
    it "maximum 50 characters is met"
    it "contains only letters and spaces is met"
  end
  context "is not valid unless article link formatting of" do
    it "is a string"
    it "containes a full redirectable link"
  end
  context "is not valid unless article published date formatting of" do 
    it "is a correctly formatted datetime"
  end
  context "is not valid unless article description formatting of" do
    it "is a text value"
    it "has a maximum character count of 150 characters"
    it "only containes letters and spaces"
  end
  context "is not valid unless article image_true formatting of" do 
    it "is a boolean value"
  end
end
