class BackgroundSerializer < ActiveModel::Serializer
  attributes :id, :image, :created_at, :updated_at
end
