class EducationsController < ApplicationController

  def index
  end

  def new
  end
    
  def create  
  end

  def show
  end

  def edit
  end

  def update
    Unirest.patch("http://localhost:3000/students.json", headers:{ "Accept" => "application/json" }, parameters:{ start_date: params[:start_date], end_date: params[:end_date], degree: params[:degree], university_name: params[:university_name], details: params[:details]}).body
  end

  def destroy
  end
  
end
