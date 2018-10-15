require 'test_helper'

describe UsersController do
  describe User do

    describe "Index View" do
      let(:user) { users(:one) }

      it "should go to index view" do
        get users_path

        must_respond_with :success
      end
    end

    #ARRANGE

    #ACT


    #ASSERT

    describe "Show View" do
      let(:user) { users(:one) }

      it "should go to show index" do
        #ARRANGE
        

        #ACT


        #ASSERT
      end
    end
  end

end
