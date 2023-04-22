require 'rails_helper'

RSpec.describe BancosController, type: :controller do
  describe "GET #index" do
    it "devuelve una lista de bancos" do
      banco = Banco.create(nombre: "Banco X")
      get :index
      expect(assigns(:bancos).count).to be > 0
    end
  end

  describe "GET #show" do
    it "muestra el banco solicitado" do
      banco = Banco.create(nombre: "Banco X")
      get :show, params: { id: banco.id }
      expect(assigns(:banco)).to eq(banco)
    end
  end

  describe "GET #new" do
    it "renderiza la plantilla new" do
      get :new
      expect(response).to render_template(:new)
    end
  end

  describe "POST #create" do
    context "con parametros validos" do
      it "crea un nuevo banco" do
        expect {
          post :create, params: { banco: { nombre: "Banco X" } }
        }.to change(Banco, :count).by(1)
      end

      it "redirige a la pagina de detalles del banco creado" do
        post :create, params: { banco: { nombre: "Banco X" } }
        expect(response).to redirect_to Banco.last
      end
    end

    context "con parametros invalidos" do
      it "no crea un nuevo banco" do
        expect {
          post :create, params: { banco: { nombre: nil } }
        }.to_not change(Banco, :count)
      end

      it "renderiza la plantilla new" do
        post :create, params: { banco: { nombre: nil } }
        expect(response).to render_template(:new)
      end
    end
  end
end
