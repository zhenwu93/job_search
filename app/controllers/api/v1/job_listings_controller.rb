require 'rest-client'

class Api::V1::JobListingsController < ApplicationController
  before_action :find_job_listing, only: [:show, :update, :destroy]


  def job_search
    # byebug
    
    url = http://api.adzuna.com/v1/api/jobs/us/search/1?app_id={app_id}&app_key={app_key}
    req = RestClient.get(url)
    resp = JSON.parse(req)
    byebug
    real_resp = resp.
    # resp... [params[:searchform]]
    render json: real_resp
  end

  def index
    @job_listings = JobListing.all
    render json: @job_listings
  end

  def show
    render json: @job_listing
  end

  def create
      @job_listing = JobListing.new(job_listing_params)
    if @job_listing.save
        render json: @job_listing, status: :created
      else
        render json: { errors: @job_listing.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @job_listing.update(job_listing_params)
    if @job_listing.save
      render json: @job_listing, status: :accepted
    else
      render json: { errors: @job_listing.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @job_listing.destroy
    if @job_listing.destroy
       head :no_content, status: :ok
     else
       render json: @job_listing.errors, status: :unprocessable_entity
    end
  end


  private

  def job_listing_params
    params.require(:title, :description, :job_type, :salary, :location, :experience)
  end

  def find_job_listing
    @job_listing = Job_listing.find(params[:id])
  end
end
