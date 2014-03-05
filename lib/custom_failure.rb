class CustomFailure < Devise::FailureApp
  def redirect_url
    redirect_to root_path
  end

  def respond
    if http_auth?
      http_auth
    else
      render :nothing
    end
  end
end