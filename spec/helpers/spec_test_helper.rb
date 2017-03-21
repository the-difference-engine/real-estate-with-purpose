module SpecTestHelper   

  def login_admin
    user = User.find_by(:admin => true)
    request.session[:user] = user.id
  end

  def login_admin_false
    user = User.find_by(:admin => false)
    request.session[:user] = user.id
  end

  def current_user
    User.find(request.session[:user])
  end
end