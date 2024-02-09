class ApplicationController < ActionController::Base
  before_action :set_current_user
  before_action :authenticate_user!

  private

  def set_current_user
    Current.user = current_user if current_user
  end
end
