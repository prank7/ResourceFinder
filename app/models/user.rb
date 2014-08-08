class User < ActiveRecord::Base
  has_many :identities
  has_many :resources

  def self.create_with_omniauth(auth)
    create(name: auth.info['name'])
  end
end
