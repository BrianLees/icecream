
class LoginPage
  include PageObject

  page_url 'http://localhost:4567/login'

  text_field(:user_name, :name => 'username')
  text_field(:password, :name => 'password')
  button(:login, :name => 'login')

  def login_with_credentials(credential_hash)
    self.user_name = credential_hash[:login_name]
    self.password = credential_hash[:password]
    login
  end
end
