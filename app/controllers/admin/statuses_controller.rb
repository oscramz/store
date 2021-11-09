class Admin::StatusesController < ApplicationController
  
  layout 'admin_layout'
  before_action :set_statuses, only: [:show, :edit, :update, :destroy]

  def index
    @statuses = Status.all
  end

  def new
    @status = Status.new
  end

  def show
  end

  def edit
  end

  def create
    @status = Status.new(params_statuses)
    if @status.save
      redirect_to admin_statuses_path
    else
      render :new
    end
  end
  
  def update
    if @status.update(params_statuses)
      redirect_to admin_statuses_path
    else
      render :edit
    end
  end
  
  def destroy
    @status.destroy
    redirect_to admin_statuses_path
  end
  
  private

  def set_statuses
    @status = Status.find(params[:id])
  rescue
    flash[:set_statuses_error] ="Could not find that record"
    redirect_to admin_statuses_path
  end
  
  def params_statuses
    params.require(:status).permit(:description)
  end
  
end
