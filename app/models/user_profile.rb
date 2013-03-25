class UserProfile < ActiveRecord::Base
  attr_accessible :address, :company, :gender, :locale, :tel_1, :tel_2, :zip, :isValid



  belongs_to :user

  def gender
    read_attribute(:gender) || 'male'
  end
end
