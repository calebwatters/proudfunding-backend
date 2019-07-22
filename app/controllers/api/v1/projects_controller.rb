class Api::V1::ProjectsController < ApplicationController
    skip_before_action :authorized
    def index 
        projects = Project.all 
        render json: projects
    end

    def create
        project = Project.new(project_params)

        if project.save 
            render json: project 
        else
            render json: {message: 'There was an issue with your project submission'}
        end
    end

    def show
        project = Project.find(params[:id])
        render json: project
    end

    private 

    def project_params
        params.require(:project).permit(:title, :description, :image1_url, :image2_url, :image3_url, :company_name, :company_url)
    end

end
