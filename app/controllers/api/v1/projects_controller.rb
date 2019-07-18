class Api::V1::ProjectsController < ApplicationController
    skip_before_action :authorized
    def index 
        projects = Project.all 
        render json: projects
    end
end
