# frozen_string_literal: true

# ProjectsController manages project-related actions including listing,
# creating, updating, and deleting projects. It works as part of the MVC framework,
# responding to user inputs and returning appropriate views or data.
class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end
end
