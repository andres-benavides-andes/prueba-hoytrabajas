require 'rails_helper'

RSpec.describe Proveedor, type: :model do

  let(:proveedor) {build(:proveedor)}
  it 'es valido con los atributos valido' do
    expect(proveedor).to be_valid
  end

  it 'no es valido sin nombre' do
    proveedor.nombre = nil
    expect(proveedor).to_not be_valid
  end

  it 'no es vallido sin nit' do
    proveedor.nit = nil
    expect(proveedor).to_not be_valid
  end

  it 'no es valido por el formato del nit' do
    proveedor.nit = '1234567890024'
    expect(proveedor).to_not be_valid
  end

  it 'formato de nit valido' do
    proveedor.nit = '901362343-9'
    expect(proveedor).to be_valid
  end

  it 'no es valido porque falta contacto' do
    proveedor.contacto = nil
    expect(proveedor).to_not be_valid
  end

  it 'es valido sin celular' do
    proveedor.celular = nil
    expect(proveedor).to be_valid
  end

  it 'no es valido por el celular tiene mas de 10 digitos' do
    proveedor.celular = '12345678901'
    expect(proveedor).to_not be_valid
  end

  it 'es valido sin numero_cuenta' do
    proveedor.numero_cuenta = nil
    expect(proveedor).to be_valid
  end

  it 'no es valido por el numero de cuenta tiene mas de 15 digitos' do
    proveedor.numero_cuenta = '1234567890123456'
    expect(proveedor).to_not be_valid
  end
end
