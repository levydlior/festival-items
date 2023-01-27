class ItemSerializer < ActiveModel::Serializer
  attributes :id, :item_name, :quantity, :bringing
end
