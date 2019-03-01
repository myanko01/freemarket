class UsersController < ApplicationController

  def index
    render template "users/mypage"
  end

  def show

  end
  
  def new
    render template "users/identification"
  end
  
  def create
    render template "users/"
  end
  
  def edit
    render template "users/profile"
  end

  def update

  end

  def delete
    render template "users/logout"
  end
end
