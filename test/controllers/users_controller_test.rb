require 'test_helper'

describe UsersController do
  describe "index" do
    it "goes to index view" do

      get users_path

      must_respond_with :success
    end

    it "renders users" do
      users = User.all

      get users_path

      expect( response.body ).must_include("dan")
      expect( response.body ).must_include("kari")
    end

    it "response with success with no users" do
      count = User.all.count
      users = User.all
      users.each do |user|
        user.votes.destroy_all
        user.destroy
      end

      get users_path

      assert_response :success
    end
  end

  describe "show" do
    it "responses with success when user is valid" do
      dan = users(:dan)

      get user_path(dan)

      must_respond_with :success
    end

    it "renders not_found when user is invalid" do
      user = User.count + 1
      get user_path(user)

      must_respond_with :not_found
    end
  end
end
