class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable


  self.inheritance_column = :type

  def self.types
    ['Admin', 'Driver', 'Operations', 'Customer']
  end


  def name 
    "#{self.first_name} #{self.last_name}"   
  end

end
