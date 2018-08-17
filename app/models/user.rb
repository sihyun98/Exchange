class User < ApplicationRecord
  rolify
  after_create :assign_default_role
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :reviews
  has_many :matchings
  has_many :notices
  has_many :infos
  has_many :clubs
  has_many :questions
  
  #comment 
  has_many :comments
  has_many :coreviews
  has_many :commentinfos
  has_many :commentmatchings
  has_many :commentquestions
  has_many :commentclubs
  
  
  def assign_default_role
    self.add_role(:newuser) if self.roles.blank?
  end
end
