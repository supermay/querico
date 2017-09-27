class CakeSerializer < ActiveModel::Serializer
  attributes :id, :name, :flavors
  has_many :flavors

end
