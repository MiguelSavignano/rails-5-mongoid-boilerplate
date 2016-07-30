require 'rails_helper'
<% module_namespacing do -%>
RSpec.describe <%= controller_class_name %>Controller, type: :controller do

  let(:<%= file_name %>){ create(:<%= file_name %>) }
  let(:valid_attributes) { attributes_for(:<%= file_name %>) }

  let(:invalid_attributes) { attributes_for(:<%= file_name %>) }

  describe "GET #index" do
    before{ get :index, params: {} }
    it { expect(assigns(:<%= file_name %>s)).to eq([<%= file_name %>]) }
    it { expect(response).to render_template(:index) }
  end

  describe "GET #show" do
    before{ get :show, params: {id: <%= file_name %>.to_param} }
    it { expect(assigns(:<%= file_name %>)).to eq(<%= file_name %>) }
  end

  describe "GET #new" do
    before{ get :new, params: {} }
    it { expect(assigns(:<%= file_name %>)).to be_a_new(<%= class_name %>) }
    it { expect(response).to render_template(:new) }
  end

  describe "GET #edit" do
    before{ get :edit, params: {id: <%= file_name %>.to_param} }
    it { expect(assigns(:<%= file_name %>)).to eq(<%= file_name %>) }
    it { expect(response).to render_template(:edit) }
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new <%= class_name %>" do
        expect {
          post :create, params: {<%= file_name %>: valid_attributes}
        }.to change(<%= class_name %>, :count).by(1)
      end

      it "assigns a newly created <%= file_name %> as @<%= file_name %> without erros" do
        post :create, params: {<%= file_name %>: valid_attributes}
        expect(assigns(:<%= file_name %>)).to be_a(<%= class_name %>)
        expect(assigns(:<%= file_name %>).errors).to be_empty
        expect(assigns(:<%= file_name %>)).to be_persisted
      end

      it "redirects to the created <%= file_name %>" do
        post :create, params: {<%= file_name %>: valid_attributes}
        expect(response).to redirect_to(<%= class_name %>.last)
      end
    end

    context "with invalid params" do
      before do
        allow_any_instance_of(<%= class_name %>).to receive(:save).and_return(false) # mock
        post :create, params: {<%= file_name %>: invalid_attributes}
      end

      it{ expect(assigns(:<%= file_name %>)).to be_a_new(<%= class_name %>) }
      it {expect(response).to render_template("new") }
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) { attributes_for(:<%= file_name %>) }
      before{ put :update, params: {id: <%= file_name %>.to_param, <%= file_name %>: new_attributes} }

      it { expect(assigns(:<%= file_name %>)).to eq(<%= file_name %>) }
      it { expect(response).to redirect_to(<%= file_name %>) }

      it "updates the requested <%= file_name %> contain the same attribute sended" do
        method = new_attributes.keys.first
        expect(assigns(:<%= file_name %>).send(method)).to eq(new_attributes[method])
      end
    end

    context "with invalid params" do
      let!(:<%= file_name %>){ create(:<%= file_name %>) }
      before do
        allow_any_instance_of(<%= class_name %>).to receive(:save).and_return(false)
        put :update, params: {id: <%= file_name %>.to_param, <%= file_name %>: invalid_attributes}
      end

      it { expect(assigns(:<%= file_name %>)).to eq(<%= file_name %>) }
      it { expect(response).to render_template("edit") }
    end
  end

  describe "DELETE #destroy" do
    let!(:<%= file_name %>){ create(:<%= file_name %>) }

    it "destroys the requested <%= file_name %>" do
      expect {
        delete :destroy, params: {id: <%= file_name %>.to_param}
      }.to change(<%= class_name %>, :count).by(-1)
    end

    it "redirects to the <%= file_name %>s list" do
      delete :destroy, params: {id: <%= file_name %>.to_param}
      expect(response).to redirect_to(<%= file_name %>s_url)
    end
  end

end
<% end -%>
