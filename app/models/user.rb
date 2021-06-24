class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  has_many :containers, foreign_key: "driver_id"

  validates_presence_of :email, :first_name, :phone, :last_name
  

  self.inheritance_column = :type

  
  validates :email, uniqueness: true


  def self.types
    ['Admin', 'Driver', 'Operations']
  end


  def type_enum
    [ 'Driver', 'Operations', 'Admin']
  end 

  def name 
    "#{self.first_name} #{self.last_name}"   
  end

  def admin?
    self.type == "Admin"    
  end

end
