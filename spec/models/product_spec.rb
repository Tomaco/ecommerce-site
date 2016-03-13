require 'rails_helper'

describe Product do
  
  context "when the product has comments" do
    before do
      @product = Product.create!(name: "containers")
      @user = FactoryGirl.create(:user)
      @comments = @product.comments.create!(rating: 1, user: @user, body: "Awful container!"), 
                  @product.comments.create!(rating: 3, user: @user, body: "Average container!"), 
                  @product.comments.create!(rating: 5, user: @user, body: "Great container!")
    end

    it "returns the average rating of all comments" do
      expect(@product.avg_rating).to eq 3
    end
  end

  context "when creating a product" do
    before do
      @product = Product.new(description: "Containers of all sizes")
    end

    it "is not valid when required product data is missing" do
      expect(@product).not_to be_valid
    end
  end

end
