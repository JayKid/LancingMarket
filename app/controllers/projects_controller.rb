class ProjectsController < ApplicationController
  
  def show
    @project = Project.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @project }
    end
  end

  def index
    @projects = current_user.project.all
  end
  
  def new
  	raise ActionController::RoutingError.new('Not found') unless current_user
  	@project = current_user.project.build
  	@project.milestone.build
  end

  def create
    @project = current_user.project.build(params[:project])
    params[:milestone].each_value { |milestone| 
    	@project.milestone.build(milestone)
    }
    if @project.save
      redirect_to "/projects/#{@project.id}", :notice => "Projecte afegit correctament!"
    else
      render "new"
    end  end

  def all
  end
end