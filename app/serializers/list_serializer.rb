class ListSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_id, :created_at, :updated_at, :permissions

  def name
  	object.name
  end

  def user_id
  	object.user_id
  end

  def permissions
    object.permissions
  end

  def created_at
  	object.created_at.strftime('%B %d, %Y')
  end

  def updated_at
  	object.updated_at.strftime('%B %d, %Y')
  end

end
