class EducationsController < ApplicationController

  def index
    @educations = []
    education_hashes = Unirest.get("http://localhost:3000/students.json").body
    education_hashes.educations.each do |hash|
      @educations << Student.new(hash)
    end
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
