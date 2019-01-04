require 'rest-client'

class Api::V1::JobListingsController < ApplicationController
  before_action :find_job_listing, only: [:show, :update, :destroy]


  def job_search
    url = "http://api.adzuna.com/v1/api/jobs/us/search/1?app_id=#{ENV['APP_ID']}&app_key=#{ENV['APP_KEY']}"
    req = RestClient.get(url)
    resp = JSON.parse(req)
    # byebug
    results = resp["results"]

    results.each do |listing|
      JobListing.find_or_create_by(
        job_id: listing["id"],
        title: listing["title"],
        location: listing["location"]["area"][1],
        description: listing["description"],
        salary: listing["salary_is_predicted"],
        company: listing["company"]["display_name"],
        website: listing["redirect_url"]
      )

      # job_listing = JobListing.new
      # job_listing.job_id = listing["id"]
      # job_listing.title = listing["title"]
      # job_listing.location = listing["location"]["area"][1]
      # job_listing.description = listing["description"]
      # job_listing.salary = listing["salary_is_predicted"]
      # job_listing.company = listing["company"]["display_name"]
      # job_listing.website = listing["redirect_url"]
      # job_listing.save
    end

    render json: results
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
    params.require(:title, :description, :company, :salary, :location, :website)
  end

  def find_job_listing
    @job_listing = Job_listing.find(params[:id])
  end
end
