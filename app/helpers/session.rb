def current_user
  @current_user ||= User.find_by(id: session[:user_id])
end



def require_user
  redirect '/users/new' unless current_user
end


def authorized?(user)
  login? && current_user==user
end

authorized?(User.find_by(id: params[:id]))

<form ation='/subcribe' method="post">
  <input type='hidden' value="<%= current_user.id %>"
</form>
