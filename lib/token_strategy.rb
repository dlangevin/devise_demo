class TokenStrategy < Devise::Strategies::Base
  def valid?
    request.authorization.present?
  end

  def authenticate!
    user = User.find_by(token: request.authorization)
    success! user if user.present?
  end
end