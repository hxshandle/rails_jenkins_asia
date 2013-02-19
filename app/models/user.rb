class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  ROLES = %w[admin managerLv1 managerLv2 staff customerLv1 customerLv2 supplierLv1 supplierLv2 banned]
  attr_accessible :name, :email, :password,:role, :password_confirmation, :remember_me
  # attr_accessible :title, :body

  validates_presence_of :name
  validates_uniqueness_of :name, :email, :case_sensitive => false

  def admin?
    1 == 1
  end
end
