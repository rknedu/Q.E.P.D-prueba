class Usuario < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  #attr_accessible :name, :apellido, :email, :password, :password_confirmation, :remember_me, :role_id
  belongs_to :role

end
