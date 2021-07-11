class User < ApplicationRecord
  before_create :default_home
  has_many :posts
  belongs_to :home, foreign_key: 'divesite_id', class_name: "Divesite"

  devise :database_authenticatable, :registerable,
       :recoverable, :rememberable, :trackable, :validatable, :omniauthable, omniauth_providers: %i(google)


  def self.create_unique_string
    SecureRandom.uuid
  end

  def self.find_for_google(auth)
    user = User.find_by(email: auth.info.email)
    unless user
      user = User.new(name:     auth.info.name,
                      email:    auth.info.email,
                      provider: auth.provider,
                      uid:      auth.uid,
                      password: Devise.friendly_token[0, 20],
                                   )
    end
    user.save
    user
  end

  def default_home
    home = params[:home].presence || '12'
  end
end
