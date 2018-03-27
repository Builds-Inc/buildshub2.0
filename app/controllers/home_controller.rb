class HomeController < ApplicationController
  def mypage
    @str  = "mypage"
    @personal = Personal.find_by(user_id: current_user.id)
  end
end
