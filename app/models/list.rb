class List < ActiveRecord::Base
  belongs_to :user
  has_many :items

  validate :permissions_valid, on: :update

  def permissions_valid
  	puts "*" * 10
  	puts permissions.length
  	puts permissions.class
  	puts permissions == "Private"
  	unless permissions == "Private"
  		errors.add(:permissions, "Wrong permissions")
  	end
  end

end
