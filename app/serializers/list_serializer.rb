class ListSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_id, :created_at, :updated_at

  def name
  	object.name
  end

  def user_id
  	object.user_id
  end

  def created_at
  	object.created_at.strftime('%B %d, %Y')
  end

  def updated_at
  	object.updated_at.strftime('%B %d, %Y')
  end

end
