class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: %i[facebook twitter google_oauth2]
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :birth_year

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_initialize do |user|
      user.email = auth.info.email
      user.nickname = auth.info.name
    end
  end

  def self.set_password
    Devise.friendly_token[0,20]
  end
end
