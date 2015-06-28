class UserSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :updated_at, :email, :name

  def name
  	object.name
  end

  def email
  	object.email
  end

  def created_at
  	object.created_at.strftime('%B %d, %Y')
  end

  def updated_at
  	object.updated_at.strftime('%B %d, %Y')
  end

end
