require 'rails_helper'

RSpec.describe Article, type: :model do
  #Ensure presence of all necessary article attributes
  it "is not valid without a title" do 
    should validate_presence_of(:title).on(:create)
  end
  it "is not valid without an article link" do
    should validate_presence_of(:article_link).on(:create) 
  end
  it "is not valid without a published date" do
    should validate_presence_of(:published_date).on(:create)
  end
  it "is not valid witout a description" do
    should validate_presence_of(:description).on(:create) 
  end
  it "is not valid without an image_present boolean" do
    should validate_presence_of(:image_present).on(:create) 
  end

  #Ensures each article attribute adhears to the formating rules
  context "is not valid unless title formatting of" do 
    it "maximum 50 characters is met" do 
      should validate_length_of(:title).is_at_most(50)
    end
  end
  context "is not valid unless article link formatting of" do
    it "containes a full redirectable link" do 
    end
  end
  context "is not valid unless article published date formatting of" do 
  end
  context "is not valid unless article description formatting of" do
    it "has a maximum character count of 150 characters" do
      should validate_length_of(:description).is_at_most(150) 
    end
  end
  context "is not valid unless article image_true formatting of" do 
  end
end
