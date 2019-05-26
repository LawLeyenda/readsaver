class CustomFailure < Devise::FailureApp
  def redirect_url
    redirect_to login_path
end
  def respond
    if http_auth?
      http_auth
    else
      redirect
    end
  end
end