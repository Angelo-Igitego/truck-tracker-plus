class User < ApplicationRecord
  # Include default devise modules. Others available are: # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  validates_presence_of :type, :email, :first_name, :phone, :last_name

  has_many :containers, foreign_key: "driver_id"
 
  self.inheritance_column = :type
  
  validates :email, uniqueness: true


  def set_default_type
    if self.type == ""
      self.type = "Driver"
    end
    
  end

  def self.types
    ['Admin', 'Driver', 'Operations']
  end


  def driver?
    self.type == "Driver"
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
