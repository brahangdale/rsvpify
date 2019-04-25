class User < ActiveRecord::Base

   acts_as_token_authenticatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:omniauthable, :omniauth_providers => [:facebook, :google_oauth2]

  has_many :events
  has_many :user_provider, :dependent => :destroy



  def name
  	if self.first_name.present?
  		self.first_name
  	else 
  		self.email.split('@')[0]
  	end
  end
end
