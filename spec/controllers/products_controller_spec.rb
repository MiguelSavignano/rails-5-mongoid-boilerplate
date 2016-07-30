require 'rails_helper'
RSpec.describe ProductsController, type: :controller do

  let(:product){ create(:product) }
  let(:valid_attributes) { attributes_for(:product) }

  let(:invalid_attributes) { attributes_for(:product) }

  describe "GET #index" do
    before{ get :index, params: {} }
    it { expect(assigns(:products)).to eq([product]) }
    it { expect(response).to render_template(:index) }
  end

  describe "GET #show" do
    before{ get :show, params: {id: product.to_param} }
    it { expect(assigns(:product)).to eq(product) }
  end

  describe "GET #new" do
    before{ get :new, params: {} }
    it { expect(assigns(:product)).to be_a_new(Product) }
    it { expect(response).to render_template(:new) }
  end

  describe "GET #edit" do
    before{ get :edit, params: {id: product.to_param} }
    it { expect(assigns(:product)).to eq(product) }
    it { expect(response).to render_template(:edit) }
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Product" do
        expect {
          post :create, params: {product: valid_attributes}
        }.to change(Product, :count).by(1)
      end

      it "assigns a newly created product as @product without erros" do
        post :create, params: {product: valid_attributes}
        expect(assigns(:product)).to be_a(Product)
        expect(assigns(:product).errors).to be_empty
        expect(assigns(:product)).to be_persisted
      end

      it "redirects to the created product" do
        post :create, params: {product: valid_attributes}
        expect(response).to redirect_to(Product.last)
      end
    end

    context "with invalid params" do
      before do
        allow_any_instance_of(Product).to receive(:save).and_return(false) # mock
        post :create, params: {product: invalid_attributes}
      end

      it{ expect(assigns(:product)).to be_a_new(Product) }
      it {expect(response).to render_template("new") }
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) { attributes_for(:product) }
      before{ put :update, params: {id: product.to_param, product: new_attributes} }

      it { expect(assigns(:product)).to eq(product) }
      it { expect(response).to redirect_to(product) }

      it "updates the requested product contain the same attribute sended" do
        method = new_attributes.keys.first
        expect(assigns(:product).send(method)).to eq(new_attributes[method])
      end
    end

    context "with invalid params" do
      let!(:product){ create(:product) }
      before do
        allow_any_instance_of(Product).to receive(:save).and_return(false)
        put :update, params: {id: product.to_param, product: invalid_attributes}
      end

      it { expect(assigns(:product)).to eq(product) }
      it { expect(response).to render_template("edit") }
    end
  end

  describe "DELETE #destroy" do
    let!(:product){ create(:product) }

    it "destroys the requested product" do
      expect {
        delete :destroy, params: {id: product.to_param}
      }.to change(Product, :count).by(-1)
    end

    it "redirects to the products list" do
      delete :destroy, params: {id: product.to_param}
      expect(response).to redirect_to(products_url)
    end
  end

end
