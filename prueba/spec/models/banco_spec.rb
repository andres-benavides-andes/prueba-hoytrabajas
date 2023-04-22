require 'rails_helper'

RSpec.describe Banco, type: :model do
  it "es valido con un nombre" do
    banco = Banco.new(nombre: "Banco X")
    expect(banco).to be_valid
  end

  it "no es valido sin un nombre" do
    banco = Banco.new(nombre: nil)
    expect(banco).to_not be_valid
  end

  it "nombre de banco demasiado largo" do
    banco = Banco.new(nombre: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sed")
    expect(banco).to_not be_valid
  end
end
