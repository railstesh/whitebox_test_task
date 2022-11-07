class TicketsController < ApplicationController
  before_action :set_ticket, only: %i[ show edit update destroy create]

  before_action :get_project

  def new
    @ticket = Ticket.new
  end

  def index
    @tickets = Ticket.all
  end

  def show
  end

  def edit
  end


  def create
    @ticket = Ticket.new(ticket_params.merge(project_id: @project.id))
    if @ticket.save
      redirect_to project_ticket_path(@project, @ticket), notice: "ticket was successfully created." 
    else
      render 'new'
    end
  end

  def update
    if @ticket.update(ticket_params.merge(project_id: @project.id))
      redirect_to project_tickets_path(@project, @ticket) , notice: "ticket was successfully updated." 
    else
      render 'edit'
    end
  end


  def destroy
    @ticket.destroy
    redirect_to  project_tickets_path , notice: "ticket was successfully destroyed." 
  end

  private

    def get_project
    @project = Project.find(params[:project_id])
    end

    def set_ticket
      @ticket = Ticket.find_by(params[:id])
    end

    def ticket_params
      params.require(:ticket).permit(:title, :description, :priority, :start_date, :end_date, :status, :project_id)
    end
end
