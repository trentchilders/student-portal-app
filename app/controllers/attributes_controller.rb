class AttributesController < ApplicationController

  def index
    @student_attributes = []
    student_attribute_hashes = Unirest.get("http://localhost:3000/students.json").body
    student_attribute_hashes.each do |hash|
      @student_attributes << Student.new(hash)
    end
  end

  def show
    @student_attribute = Student.new(Unirest.get("http://localhost:3000/students/#{params[:id]}.json").body)

    @education_array = []
    education_hashes = (Unirest.get("http://localhost:3000/students/#{params[:id]}.json").body)["educations"]
    education_hashes.each do |hash|
      @education_array << Student.new(hash)
    end

    @experience_array = []
    experience_hashes = (Unirest.get("http://localhost:3000/students/#{params[:id]}.json").body)["experiences"]
    experience_hashes.each do |hash|
      @experience_array << Student.new(hash)
    end

    @capstone_array = []
    capstone_hashes = (Unirest.get("http://localhost:3000/students/#{params[:id]}.json").body)["capstones"]
    capstone_hashes.each do |hash|
      @capstone_array << Student.new(hash)
    end

  end

  def new

  end

  def create

  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    Unirest.patch("http://localhost:3000/students/#{@student.id}", headers:{ "Accept" => "application/json" }, parameters:{ first_name: params[:first_name], last_name: params[:last_name], email: params[:email], phone_number: params[:phone_number], short_bio: params[:short_bio], linkedin: params[:linkedin], twitter: params[:twitter], blog_site: params[:blog_site], resume: params[:resume], github: params[:github], photo: params[:photo]}).body
    redirect_to "/students"
  end

  def destroy
    
  end


end
