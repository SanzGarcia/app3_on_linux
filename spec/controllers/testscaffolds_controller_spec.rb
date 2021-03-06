require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe TestscaffoldsController do

  # This should return the minimal set of attributes required to create a valid
  # Testscaffold. As you add validations to Testscaffold, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TestscaffoldsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all testscaffolds as @testscaffolds" do
      testscaffold = Testscaffold.create! valid_attributes
      get :index, {}, valid_session
      assigns(:testscaffolds).should eq([testscaffold])
    end
  end

  describe "GET show" do
    it "assigns the requested testscaffold as @testscaffold" do
      testscaffold = Testscaffold.create! valid_attributes
      get :show, {:id => testscaffold.to_param}, valid_session
      assigns(:testscaffold).should eq(testscaffold)
    end
  end

  describe "GET new" do
    it "assigns a new testscaffold as @testscaffold" do
      get :new, {}, valid_session
      assigns(:testscaffold).should be_a_new(Testscaffold)
    end
  end

  describe "GET edit" do
    it "assigns the requested testscaffold as @testscaffold" do
      testscaffold = Testscaffold.create! valid_attributes
      get :edit, {:id => testscaffold.to_param}, valid_session
      assigns(:testscaffold).should eq(testscaffold)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Testscaffold" do
        expect {
          post :create, {:testscaffold => valid_attributes}, valid_session
        }.to change(Testscaffold, :count).by(1)
      end

      it "assigns a newly created testscaffold as @testscaffold" do
        post :create, {:testscaffold => valid_attributes}, valid_session
        assigns(:testscaffold).should be_a(Testscaffold)
        assigns(:testscaffold).should be_persisted
      end

      it "redirects to the created testscaffold" do
        post :create, {:testscaffold => valid_attributes}, valid_session
        response.should redirect_to(Testscaffold.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved testscaffold as @testscaffold" do
        # Trigger the behavior that occurs when invalid params are submitted
        Testscaffold.any_instance.stub(:save).and_return(false)
        post :create, {:testscaffold => {}}, valid_session
        assigns(:testscaffold).should be_a_new(Testscaffold)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Testscaffold.any_instance.stub(:save).and_return(false)
        post :create, {:testscaffold => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested testscaffold" do
        testscaffold = Testscaffold.create! valid_attributes
        # Assuming there are no other testscaffolds in the database, this
        # specifies that the Testscaffold created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Testscaffold.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => testscaffold.to_param, :testscaffold => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested testscaffold as @testscaffold" do
        testscaffold = Testscaffold.create! valid_attributes
        put :update, {:id => testscaffold.to_param, :testscaffold => valid_attributes}, valid_session
        assigns(:testscaffold).should eq(testscaffold)
      end

      it "redirects to the testscaffold" do
        testscaffold = Testscaffold.create! valid_attributes
        put :update, {:id => testscaffold.to_param, :testscaffold => valid_attributes}, valid_session
        response.should redirect_to(testscaffold)
      end
    end

    describe "with invalid params" do
      it "assigns the testscaffold as @testscaffold" do
        testscaffold = Testscaffold.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Testscaffold.any_instance.stub(:save).and_return(false)
        put :update, {:id => testscaffold.to_param, :testscaffold => {}}, valid_session
        assigns(:testscaffold).should eq(testscaffold)
      end

      it "re-renders the 'edit' template" do
        testscaffold = Testscaffold.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Testscaffold.any_instance.stub(:save).and_return(false)
        put :update, {:id => testscaffold.to_param, :testscaffold => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested testscaffold" do
      testscaffold = Testscaffold.create! valid_attributes
      expect {
        delete :destroy, {:id => testscaffold.to_param}, valid_session
      }.to change(Testscaffold, :count).by(-1)
    end

    it "redirects to the testscaffolds list" do
      testscaffold = Testscaffold.create! valid_attributes
      delete :destroy, {:id => testscaffold.to_param}, valid_session
      response.should redirect_to(testscaffolds_url)
    end
  end

end
