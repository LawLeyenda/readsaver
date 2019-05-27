class CustomFailure < Devise::FailureApp
  def redirect_url
    redirect_to login_path
  end
  
end