class Identity < ActiveRecord::Base
  belongs_to :user

  def self.find_with_omniauth(auth)
    find_by(provider: auth['provider'], uid: auth['uid'])
  end

  def self.create_with_omniauth(auth)
  	# Chek if any Existing User with same email id has used any other oauth provider to loginw
  	existingUser = Identity.find_by(email: auth.info['email'])
  	if existingUser.present?
  		create(uid: auth['uid'], provider: auth['provider'], email: auth.info['email'], user_id: existingUser.id)
  	else
    	create(uid: auth['uid'], provider: auth['provider'], email: auth.info['email'])
    end
  end
end
