FactoryBot.define do
  factory :proveedor do
    nombre { "MyString" }
    nit { "901362343-4" }
    contacto { "MyString" }
    celular { "MyString" }
    numero_cuenta { "MyString" }
    association :banco, factory: :banco
  end
end
