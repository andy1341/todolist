# frozen_string_literal: true
class ProjectsController < ApplicationController
  load_and_authorize_resource

  def index
  end

  def create
    @project.save
  end

  def update
    @project.update(project_params)
  end

  def destroy
    @project.destroy
  end

  private

  def project_params
    params.require(:project).permit(:title).merge(user: current_user)
  end
end
