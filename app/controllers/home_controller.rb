class HomeController < ApplicationController
  before_action :set_personal

  def mypage
    @str  = "mypage"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personal
      @personal = Personal.find_by(user_id: current_user.id)
    end
end
