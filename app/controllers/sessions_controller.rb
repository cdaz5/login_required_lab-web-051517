class SessionsController < ApplicationController


def index
  redirect_to login_path
end

def new

end

def create
  session[:name] = params[:name]
  if current_user
    redirect_to homepage_path
  else
    redirect_to login_path
  end
end

def homepage
end

def destroy
  session[:name] = params[:name]
  if current_user
    session.delete :name
  end
end

end
