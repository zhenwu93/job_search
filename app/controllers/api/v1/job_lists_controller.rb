class Api::V1::JobListsController < ApplicationController
  before_action :find_job_list, only: [:show, :update, :destroy]

  def index
    @job_lists = JobList.all
    render json: @job_lists
  end

  def show
    render json: @job_list
  end

  def create
      @job_list = JobList.new(job_list_params)
    if @job_list.save
        render json: @job_list, status: :created
      else
        render json: { errors: @job_list.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @job_list.update(job_list_params)
    
    if @job_list.save
      render json: @job_list, status: :accepted
    else
      render json: { errors: @job_list.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @job_list.destroy

    if @job_list.destroy
       head :no_content, status: :ok
     else
       render json: @job_list.errors, status: :unprocessable_entity
    end
  end

  private

  def job_list_params
    params.permit(:user_id, :job_listing_id)
  end

  def find_job_list
    @job_list = Job_list.find(params[:id])
  end
end
