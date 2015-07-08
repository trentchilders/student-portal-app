class ExperiencesController < ApplicationController

  def new

  end
  
  def create
    Unirest.post("http://localhost:3000/students.json", headers:{ "Accept" => "application/json" }, parameters:{ start_date: params[:start_date], end_date: params[:end_date], job_title: params[:job_title], company_name: params[:company_name], details: params[:details]}).body
    redirect_to '/students'

  end
  def show
    
  end

  def edit

  end

  def update
    
    Unirest.patch("http://localhost:3000/students.json", headers:{ "Accept" => "application/json" }, parameters:{ start_date: params[:start_date], end_date: params[:end_date], job_title: params[:job_title], company_name: params[:company_name], details: params[:details]}).body
    redirect_to '/students'
  end

  def destroy

  end
end
