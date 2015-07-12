class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :list_id, :created_at, :updated_at, :status

  def name
  	object.name
  end

  def list_id
  	object.list_id
  end

  def created_at
  	object.created_at.strftime('%B %d, %Y')
  end

  def updated_at
  	object.updated_at.strftime('%B %d, %Y')
  end

  def status
    object.status
  end

end
