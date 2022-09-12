class ClientSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :phone, :email
end
