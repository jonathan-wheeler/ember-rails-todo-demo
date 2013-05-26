class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :status, :status_desc
end
