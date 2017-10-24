class Member < ActiveRecord::Base

  #Raty Rate gem
  ratyrate_rater

  # Assosiations
  has_many :ads

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
