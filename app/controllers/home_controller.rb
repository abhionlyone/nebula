class HomeController < ApplicationController
  def index
    redirect_to projects_path if Current.user
  end
end
